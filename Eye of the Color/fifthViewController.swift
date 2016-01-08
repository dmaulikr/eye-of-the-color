//
//  fifthViewController.swift
//  Eye of the Color
//
//  Created by kportillo on 12/9/15.
//  Copyright (c) 2015 kportillo. All rights reserved.
//

import UIKit

class fifthViewController: UIViewController
{
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    var name: String = ""
    var lost = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myImage.image = UIImage(named: "teagle")
        loser()
    }

    func loser()
    {
        let alert: UIAlertController!
        if(lost)
        {
            alert = UIAlertController(title: "What a loss!\nKeep Playing \(name)?", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        }
        else
        {
                        alert = UIAlertController(title: "You've won \(name)!!!!!!!!!!!\nKeep Playing?", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        }
        let resetGame = UIAlertAction(title: "Play again?", style: UIAlertActionStyle.Default, handler: {sender in
                self.performSegueWithIdentifier("lastToFirst", sender: self)
        })
        alert.addAction(resetGame)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }

}
