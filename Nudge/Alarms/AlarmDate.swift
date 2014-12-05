//
//  AlarmDate.swift
//  Nudge
//
//  Created by Shine Wang on 2014-12-04.
//  Copyright (c) 2014 Beyond Intelligence. All rights reserved.
//

import Foundation

enum DayOfWeek: Int {
    
    case Monday     = 0b0000001
    case Tuesday    = 0b0000010
    case Wednesday  = 0b0000100
    case Thursday   = 0b0001000
    case Friday     = 0b0010000
    case Saturday   = 0b0100000
    case Sunday     = 0b1000000
    
    static let allValues = [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]
}

//represents a collection of days in a week
class AlarmDate {
    
    private var days = 0
    
    init() {
        self.days = 0
    }
    
    init(day: DayOfWeek) {
        self.days = day.rawValue
    }
    
    init(days: Int) {
        self.days = days
    }
    
    func add(day: DayOfWeek) {
        self.days |= day.rawValue
    }
    
    func contains(day: DayOfWeek) -> Bool {
        return (self.days & day.rawValue) != 0
    }
    
    func reset() {
        self.days = 0
    }
    
    func getRaw() -> Int {
        return self.days
    }
}