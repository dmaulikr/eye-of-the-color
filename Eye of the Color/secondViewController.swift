//
//  secondViewController.swift
//  Eye of the Color
//
//  Created by kportillo on 12/3/15.
//  Copyright (c) 2015 kportillo. All rights reserved.
//

import UIKit

class secondViewController: UIViewController
{
    @IBOutlet weak var countdownlabel: UILabel!
    var count = 3.0
    var name: String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        countdownlabel.text = "Get Ready!"
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("update"),userInfo: nil, repeats: true)
    }
    
    func update()
    {
        if (count > 0)
        {
            count -= 0.1
            count = round(count * 10)/10
            countdownlabel.text = String(count)
            
        }
        else
        {
            countdownlabel.text = "game over."
        }
    }
    
    @IBAction func blackButtonPressed(sender: AnyObject) {
        performSegueWithIdentifier("secondToLast", sender: self)
    }
    
    @IBAction func correctAnswer(sender: AnyObject) {
                performSegueWithIdentifier("secondToThird", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "secondToLast")
        {
            let dvc = segue.destinationViewController as! fifthViewController
            dvc.lost = true
            dvc.name = self.name
        }
        else
        {
            let dvc = segue.destinationViewController as! thirdViewController
            dvc.name = self.name
        }
    }
}

