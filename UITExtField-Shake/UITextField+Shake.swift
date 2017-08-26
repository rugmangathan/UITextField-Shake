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
    case horizontal = 0, vertical
};

extension UITextField {
    func shake(times: Int, delta: CGFloat) {
        shake(times: times,
              direction: 1,
              currentTimes: 0,
              withDelta: delta,
              andSpeed: 0.03,
              shakeDirection: .horizontal,
              completionHandler: nil)
    }

    func shake(times: Int, delta: CGFloat, completionHandler: (() -> Void)?) {
        shake(times: times,
              direction: 1,
              currentTimes: 0,
              withDelta: delta,
              andSpeed: 0.03,
              shakeDirection: .horizontal,
              completionHandler: completionHandler)
    }

    public func shake(times: Int, delta: CGFloat, speed: Double) {
        shake(times: times,
              direction: 1,
              currentTimes: 0,
              withDelta: delta,
              andSpeed: speed,
              shakeDirection: .horizontal,
              completionHandler: nil)
    }

    public func shake(times: Int, delta: CGFloat, speed: Double,
                      completionHandler: (() -> Void)?) {

        shake(times: times,
              direction: 1,
              currentTimes: 0,
              withDelta: delta,
              andSpeed: speed,
              shakeDirection: .horizontal,
              completionHandler: completionHandler)
    }

    func shake(times: Int, delta: CGFloat, speed: Double, shakeDirection: ShakeDirection) {
        shake(times: times,
              direction: 1,
              currentTimes: 0,
              withDelta: delta,
              andSpeed: speed,
              shakeDirection: shakeDirection,
              completionHandler: nil)
    }

    func shake(times: Int, delta: CGFloat, speed: Double, shakeDirection: ShakeDirection,
               completionHandler: (() -> Void)?) {

        shake(times: times,
              direction: 1,
              currentTimes: 0,
              withDelta: delta,
              andSpeed: speed,
              shakeDirection: shakeDirection,
              completionHandler: completionHandler)
    }

    func shake(times: Int, direction: Int, currentTimes: Int, withDelta: CGFloat,
               andSpeed: Double, shakeDirection: ShakeDirection, completionHandler: (() -> Void)?) {

        let animations: () -> Void = { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.transform = (shakeDirection == .horizontal
                ? CGAffineTransform(translationX: withDelta * CGFloat(direction), y: 0)
                : CGAffineTransform(translationX: 0, y: withDelta * CGFloat(direction)))
        }

        let animationCompletion: (Bool) -> Void = { [weak self] finished in
            guard let strongSelf = self else { return }
            if (currentTimes >= times) {
                UIView.animate(withDuration: andSpeed, animations: {
                    strongSelf.transform = CGAffineTransform.identity
                }, completion: { (complete: Bool) in
                    if (completionHandler != nil) {
                        completionHandler?()
                    }

                })
                return
            }

            strongSelf.shake(times: (times - 1),
                             direction: (direction * -1),
                             currentTimes: (currentTimes + 1),
                             withDelta: withDelta,
                             andSpeed: andSpeed,
                             shakeDirection: shakeDirection,
                             completionHandler: completionHandler)
        }

        UIView.animate(withDuration: TimeInterval(andSpeed),
                       animations: animations,
                       completion: animationCompletion)
    }
}
