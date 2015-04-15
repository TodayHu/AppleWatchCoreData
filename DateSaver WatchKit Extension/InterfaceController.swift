//
//  InterfaceController.swift
//  DateSaver WatchKit Extension
//
//  Created by qbuser on 4/14/15.
//  Copyright (c) 2015 qbuser. All rights reserved.
//

import WatchKit
import Foundation
import DateSaverKit


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var dateLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let date: NSDate? = DataAccess.sharedInstance.getLatestDate()
        
        if date != nil {
            dateLabel.setText(date!.description)
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
