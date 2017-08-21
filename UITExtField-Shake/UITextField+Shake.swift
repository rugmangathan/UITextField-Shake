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
    case shakeDirectionHorizontal = 0, shakeDirectionVertical
};

extension UITextField {
    func shake(_ times: Int, delta: CGFloat) {
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: 0.03, shakeDirection: ShakeDirection.shakeDirectionHorizontal, completionHandler: nil)
    }
    
    func shake(_ times: Int, delta: CGFloat, completionHandler:(() -> Void)!) {
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: 0.03, shakeDirection: ShakeDirection.shakeDirectionHorizontal, completionHandler: completionHandler)
    }
    
    public func shake(_ times: Int, delta: CGFloat, speed: Double){
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: speed, shakeDirection: ShakeDirection.shakeDirectionHorizontal, completionHandler: nil)
    }
    
    public func shake(_ times: Int, delta: CGFloat, speed: Double, completionHandler:(() -> Void)!){
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: speed, shakeDirection: ShakeDirection.shakeDirectionHorizontal, completionHandler: completionHandler)
    }
    
    func shake(_ times: Int, delta: CGFloat, speed: Double, shakeDirection: ShakeDirection){
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: speed, shakeDirection: shakeDirection, completionHandler: nil)
    }
    
    func shake(_ times: Int, delta: CGFloat, speed: Double, shakeDirection: ShakeDirection, completionHandler:(() -> Void)!){
        shake(times, direction: 1, currentTimes: 0, withDelta: delta, andSpeed: speed, shakeDirection: shakeDirection, completionHandler: completionHandler)
    }
    
    func shake(_ times: Int, direction: Int, currentTimes: Int, withDelta: CGFloat, andSpeed: Double, shakeDirection: ShakeDirection, completionHandler:(() -> Void)!){
        
        UIView.animate(withDuration: TimeInterval(andSpeed), animations: {
            self.transform = (shakeDirection == ShakeDirection.shakeDirectionHorizontal ? CGAffineTransform(translationX: withDelta * CGFloat(direction), y: 0) : CGAffineTransform(translationX: 0, y: withDelta * CGFloat(direction)))
            }, completion: {(complete: Bool) in
                if (currentTimes >= times) {
                    UIView.animate(withDuration: andSpeed, animations: {
                        self.transform = CGAffineTransform.identity
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
