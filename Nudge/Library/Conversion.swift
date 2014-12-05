//
//  Conversion.swift
//  Nudge
//
//  Created by Shine Wang on 2014-12-04.
//  Copyright (c) 2014 Beyond Intelligence. All rights reserved.
//

import Foundation

//various methods to convert between types in a rational way
class Conversion {
    
    class func stringToDate(string: String) -> NSDate! {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date = formatter.dateFromString(string)
        return date
    }
    
    class func dateToString(date: NSDate!) -> String {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let string = formatter.stringFromDate(date)
        return string
    }
}