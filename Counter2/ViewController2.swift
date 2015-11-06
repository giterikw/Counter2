//
//  ViewController2.swift
//  Counter2
//
//  Created by Erik Wästlund on 06/11/15.
//  Copyright © 2015 LostAndFound. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var myLable_2: UILabel!
   

    var countFrom = 9.0

    
    var localTtimer = NSTimer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        localTtimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("localTime"), userInfo: nil, repeats: true)
    }
   
    var starTime = 0.0
    
    func localTime(){
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let aVariable = appDelegate.i
    
        
        if (starTime == 0.0){
        starTime = appDelegate.i
        }
        
        let timeLeft = countFrom - (aVariable-starTime)
        myLable_2.text = timeLeft.description
        
        
        if (timeLeft <= 7.0){
        localTtimer.invalidate()
       
        self.performSegueWithIdentifier("returnToStart", sender: self)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
