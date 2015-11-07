//
//  ViewController2.swift
//  Counter2
//
//  Created by Erik Wästlund on 06/11/15.
//  Copyright © 2015 LostAndFound. All rights reserved.
//


// ---- Erik ----
// Startar en timer som räknar ned från timeLeft
// Timern styr blink, vibration och vybyte
// --------------

import UIKit
// </ERIK>      ------------------------------//
import AudioToolbox
import AVFoundation
// </ERIK>      ------------------------------//


class ViewController2: UIViewController {

// </ERIK>      ------------------------------//
    @IBOutlet var myLable_2: UILabel!
    var countFrom = 10.0
    var timeLeft = 0.0
    var localRoundedElapsedTime = 0.0
    var localStartTime = NSTimeInterval()
    var localTimer = NSTimer()
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
        localTimer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: aSelector, userInfo: nil, repeats: true)
        localStartTime = NSDate.timeIntervalSinceReferenceDate()
    }
    
    func localTime(){

        
        let currentTime = NSDate.timeIntervalSinceReferenceDate()
        let elapsedTime = currentTime - localStartTime
        localRoundedElapsedTime = (round(elapsedTime*100)/100)
        timeLeft = countFrom - localRoundedElapsedTime
        myLable_2.text = round(timeLeft*100/100).description
        
        if (timeLeft <= 0.0){
            localTimer.invalidate()
            self.performSegueWithIdentifier("returnToStart", sender: self)
   
            }
    
        if (timeLeft <= 0.4){
            AudioServicesPlaySystemSound(SystemSoundID())
            AudioServicesPlayAlertSound(SystemSoundID())
            self.view.backgroundColor = UIColor.blackColor()
        }
        else if (timeLeft <= 0.5){
            AudioServicesPlaySystemSound(SystemSoundID(1000))
        }
        else if (timeLeft <= 1.0){
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        }
        else if (timeLeft <= 1.8){
            AudioServicesPlayAlertSound(SystemSoundID())
        }
        else if (timeLeft <= 2.0){
             AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        }
        else if (timeLeft <= 2.8){
            AudioServicesPlayAlertSound(SystemSoundID())
        }
        else if (timeLeft <= 3.0){
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        }

        
            if (timeLeft <= 1.0){
            self.view.backgroundColor = UIColor.redColor()
        }
        else if (timeLeft <= 1.5){
            self.view.backgroundColor = UIColor.whiteColor()
            }
        else if (timeLeft <= 2.0){
            self.view.backgroundColor = UIColor.redColor()
            }
        else if (timeLeft <= 3.5){
            self.view.backgroundColor = UIColor.whiteColor()
            }
        else if (timeLeft <= 3.0){
            self.view.backgroundColor = UIColor.redColor()
            }
        else if (timeLeft <= 3.5){
            self.view.backgroundColor = UIColor.whiteColor()
        }
        else if (timeLeft <= 4.0){
            self.view.backgroundColor = UIColor.redColor()
        }
        else if (timeLeft <= 4.5){
            self.view.backgroundColor = UIColor.whiteColor()
        }
        else if (timeLeft <= 5.0){
            self.view.backgroundColor = UIColor.redColor()
        }

        
        }
    
// </ERIK>      ------------------------------//

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
