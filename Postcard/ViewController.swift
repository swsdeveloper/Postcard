//
//  ViewController.swift
//  Postcard
//
//  Created by Steven Shatz on 9/15/14.
//  Copyright (c) 2014 Steven Shatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()     // Change the color of the label
        messageLabel.hidden = false
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()    // make keyboard disappear
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

