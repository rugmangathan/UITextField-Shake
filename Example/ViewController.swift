//
//  ViewController.swift
//  Example
//
//  Created by Apple on 02/05/15.
//  Copyright (c) 2015 Rugmangathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var noOfShakesText: UITextField!
    @IBOutlet var shakeSpeedText: UITextField!
    @IBOutlet var shakeDistanceText: UITextField!
    @IBOutlet var sampleText: UITextField!
    @IBAction func shake(sender: UIButton) {
        let time = (self.noOfShakesText.text as NSString).integerValue
        let delta = CGFloat((self.shakeDistanceText.text as NSString).floatValue)
        let speed = (self.shakeSpeedText.text as NSString).doubleValue
        
        self.sampleText.shake(time, delta: delta, speed: speed, completionHandler:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var textFieldsArray: NSArray = [self.noOfShakesText, self.shakeSpeedText, self.shakeDistanceText, self.sampleText]
        textFieldsArray.enumerateObjectsUsingBlock { (object, index, stop) -> Void in
            object.layer.borderWidth = 1.0;
            object.layer.borderColor = UIColor(red: 88.0 / 255.0, green: 87.0 / 255.0, blue: 84.0 / 255.0, alpha: 1.0).CGColor
        }
        noOfShakesText.text = "10"
        shakeDistanceText.text = "10"
        shakeSpeedText.text = "0.05"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

