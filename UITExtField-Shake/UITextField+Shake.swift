//
//  UITextField+Shake.swift
//  TextField-Shake
//
//  Created by Apple on 02/05/15.
//  Copyright (c) 2015 Rugmangathan. All rights reserved.
//

import Foundation
import UIKit

enum ShakeDirection: Int {
    case ShakeDirectionHorizontal = 0, ShakeDirectionVertical
};

extension UITextField {
    func shake(times: Int, delta: CGFloat) {
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: 0.03, shakeDirection: ShakeDirection.ShakeDirectionHorizontal, completionHandler: nil)
    }
    
    func shake(times: Int, delta: CGFloat, completionHandler:(() -> Void)!) {
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: 0.03, shakeDirection: ShakeDirection.ShakeDirectionHorizontal, completionHandler: completionHandler)
    }
    
    public func shake(times: Int, delta: CGFloat, speed: Double){
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: speed, shakeDirection: ShakeDirection.ShakeDirectionHorizontal, completionHandler: nil)
    }
    
    public func shake(times: Int, delta: CGFloat, speed: Double, completionHandler:(() -> Void)!){
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: speed, shakeDirection: ShakeDirection.ShakeDirectionHorizontal, completionHandler: completionHandler)
    }
    
    func shake(times: Int, delta: CGFloat, speed: Double, shakeDirection: ShakeDirection){
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: speed, shakeDirection: shakeDirection, completionHandler: nil)
    }
    
    func shake(times: Int, delta: CGFloat, speed: Double, shakeDirection: ShakeDirection, completionHandler:(() -> Void)!){
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: speed, shakeDirection: shakeDirection, completionHandler: completionHandler)
    }
    
    func shake(times: Int, direction: Int, currentTimes: Int, withDelta: CGFloat, andSpeed: Double, shakeDirection: ShakeDirection, completionHandler:(() -> Void)!){
        
        UIView.animateWithDuration(NSTimeInterval(andSpeed), animations: {
            self.transform = (shakeDirection == ShakeDirection.ShakeDirectionHorizontal ? CGAffineTransformMakeTranslation(withDelta * CGFloat(direction), 0) : CGAffineTransformMakeTranslation(0, withDelta * CGFloat(direction)))
            }, completion: {(complete: Bool) in
                if (currentTimes >= times) {
                    UIView.animateWithDuration(andSpeed, animations: {
                        self.transform = CGAffineTransformIdentity
                        }, completion: { (complete: Bool) in
                            if (completionHandler != nil) {
                                completionHandler()
                            }
                            
                    })
                    return
                }
                self.shake((times - 1), direction: (direction * -1), currentTimes: (currentTimes + 1), withDelta: withDelta, andSpeed: andSpeed, shakeDirection: shakeDirection, completionHandler: completionHandler)
        })
    }
}