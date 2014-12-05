//
//  AlarmContainer.swift
//  Nudge
//
//  Created by Shine Wang on 2014-12-04.
//  Copyright (c) 2014 Beyond Intelligence. All rights reserved.
//

import Foundation


//represents the collection of alarms
class AlarmContainer {
    
    private let TAG = "AlarmContainer"
    
    private var alarms: [Alarm]! //unordered
    
    private var dbBridge: AlarmDB!
    private var notificationBridge: AlarmScheduler!
    
    init() {
        self.dbBridge = AlarmDB()
        self.notificationBridge = AlarmScheduler()
        
        self.alarms = self.dbBridge.getAlarms()
    }
    
    //updates the state of an alarm, registers/unregisters notifications if necessary
    func update(index: Int, newState: Alarm) -> Bool {
        NSLog("(%@) %@", TAG, "updating an alarm")
        
        self.updateState()
        return false
    }
    
    //removes an alarm
    func remove(index: Int) -> Bool {
        NSLog("(%@) %@", TAG, "removing an alarm")
        
        for i in 0 ..< self.alarms.count {
            if self.alarms[i].index == index {
                self.alarms.removeAtIndex(i)
                
                //updates indices for everything else
                for j in 0 ..< self.alarms.count {
                    if self.alarms[j].index > i {
                        self.alarms[j].index--
                    }
                }
                
                self.updateState()
                return true
            }
        }
        return false
    }
    
    //adds an alarm
    func add(alarm: Alarm) {
        NSLog("(%@) %@", TAG, "adding an alarm")
        
        self.alarms.append(alarm)
        self.alarms[self.alarms.count - 1].index = self.alarms.count - 1
        self.updateState()
    }
    
    //updates notifications and DB
    private func updateState() {
        self.dbBridge.setAlarms(self.alarms)
        self.notificationBridge.rescheduleAlarms(self.alarms)
    }
}