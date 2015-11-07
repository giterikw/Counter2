//
//  ViewController.swift
//  Counter2
//
//  Created by Erik Wästlund on 06/11/15.
//  Copyright © 2015 LostAndFound. All rights reserved.
//

// ---- Erik ----
// Startar en timer (ticker) som hämtar tiden
// från AppDelegate varje tick. Denna timer måste stägas
// av annars snurrar det två timers
// när mam återvänder till vyn
// --------------


import UIKit

class ViewController: UIViewController {

// <ERIK>       ------------------------------//

    @IBOutlet var myLable_1: UILabel!
    
    @IBAction func nxtBtn(sender: AnyObject) {
      localTtimer.invalidate()
    }
    
    var localTtimer = NSTimer()
// </ERIK>      ------------------------------//
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
// <ERIK>       ------------------------------//
        startCounter()
// </ERIK>      ------------------------------//
        
    }
    
    
// <ERIK>       ------------------------------//
    func startCounter() {
        let aSelector : Selector = "localTime"
        localTtimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: aSelector, userInfo: nil, repeats: true)
    }
    
    func localTime(){
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let aVariable = appDelegate.roundedElapsedTime
        myLable_1.text = aVariable.description
     }
// </ERIK>      ------------------------------//
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

