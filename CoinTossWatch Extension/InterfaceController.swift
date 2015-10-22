//
//  InterfaceController.swift
//  CoinTossWatch Extension
//
//  Created by Justin Ferre on 10/22/15.
//  Copyright © 2015 Justin Ferre. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var coinImg: WKInterfaceImage!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func btnPressed() {
        coinImg.setHidden(false)
        
        let random = Int(arc4random() % 2)
        
        if random == 0 {
            coinImg.setImageNamed("quarter-heads")
        }else {
            coinImg.setImageNamed("quarter-tails")
        }
        
        
    }
}
