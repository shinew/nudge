//
//  Alarm.swift
//  Nudge
//
//  Created by Shine Wang on 2014-12-04.
//  Copyright (c) 2014 Beyond Intelligence. All rights reserved.
//

import Foundation

// represents one alarm set by the user
struct Alarm {
    
    var dates: AlarmDate
    var enabled: Bool
    var minute: Int
    var hour: Int
    var repeat: Bool
    var index: Int
    
    init() {
        self.dates = AlarmDate()
        self.enabled = false
        self.minute = 0
        self.hour = 0
        self.repeat = false
        self.index = 0
    }
    
    init(index: Int, enabled: Bool, repeat: Bool, dates: AlarmDate, hour: Int, minute: Int) {
        self.index = index
        self.enabled = enabled
        self.repeat = repeat
        self.dates = dates
        self.hour = hour
        self.minute = minute
    }
}