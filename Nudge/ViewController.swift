//
//  ViewController.swift
//  Nudge
//
//  Created by Shine Wang on 2014-12-04.
//  Copyright (c) 2014 Beyond Intelligence. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alarmContainer = AlarmContainer()
    var alarmCell: AlarmCellView!
    
    override func viewDidLoad() {
        //self.alarmCell = AlarmCellView(frame: CGRectMake(0, 0, self.view.frame.width, 65))
        //self.view.addSubview(self.alarmCell)
        
        let contents = NSBundle.mainBundle().loadNibNamed("AlarmCellView", owner: nil, options: nil)
        let tmpView = contents.last! as AlarmCellView
        tmpView.setDays(AlarmDate(days: 0b000111))
        tmpView.frame = CGRectMake(0, 10, self.view.bounds.width, 65)
        self.view.addSubview(tmpView)
    }
}
