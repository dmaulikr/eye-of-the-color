//
//  ViewController.swift
//  Eye of the Color
//
//  Created by kportillo on 12/3/15.
//  Copyright (c) 2015 kportillo. All rights reserved.
//

import UIKit



class ViewController: UIViewController
{
    
    @IBOutlet weak var nameField: UITextField!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

   
    @IBAction func button1(sender: UIButton)
    {
        if(nameField.text?.characters.count != 0)
        {
            performSegueWithIdentifier("firstToSecond", sender: self)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! secondViewController
        dvc.name = nameField.text!
    }


}

