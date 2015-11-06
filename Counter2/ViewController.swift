//
//  ViewController.swift
//  Counter2
//
//  Created by Erik Wästlund on 06/11/15.
//  Copyright © 2015 LostAndFound. All rights reserved.
//
// lite ändring
import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLable_1: UILabel!
    
    @IBAction func nxtBtn(sender: AnyObject) {
      localTtimer.invalidate()
    }
    
    var localTtimer = NSTimer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        localTtimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("localTime"), userInfo: nil, repeats: true)
    }

    func localTime(){
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let aVariable = appDelegate.i
        myLable_1.text = aVariable.description
     }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

