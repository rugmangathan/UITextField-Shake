//
//  ViewController.swift
//  Example
//
//  Created by Apple on 02/05/15.
//  Copyright (c) 2015 Rugmangathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var noOfShakesText: UITextField!
    @IBOutlet var shakeSpeedText: UITextField!
    @IBOutlet var shakeDistanceText: UITextField!
    @IBOutlet var sampleText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        let textFieldsArray: [UITextField] = [noOfShakesText,
                                        shakeSpeedText,
                                        shakeDistanceText,
                                        sampleText]

        _ = textFieldsArray.map {
            $0.layer.borderColor = UIColor(red: 88.0 / 255.0,
                                           green: 87.0 / 255.0,
                                           blue: 84.0 / 255.0,
                                           alpha: 1.0).cgColor
            $0.layer.borderWidth = 1.0
        }

        noOfShakesText.text = "10"
        shakeDistanceText.text = "10"
        shakeSpeedText.text = "0.05"
    }

    @IBAction func shake(_ sender: UIButton) {

        guard let noOfShakes = noOfShakesText.text else { return }
        guard let shakeDistance = shakeDistanceText.text else { return }
        guard let shakeSpeed = shakeSpeedText.text else { return }

        let time = (noOfShakes as NSString).integerValue
        let delta = CGFloat((shakeDistance as NSString).floatValue)
        let speed = (shakeSpeed as NSString).doubleValue

        sampleText.shake(times: time,
                         delta: delta,
                         speed: speed,
                         completionHandler: nil)
    }
}

extension ViewController:  UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

