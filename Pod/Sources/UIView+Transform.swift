//
//  UIView+Transform.swift
//  Transformers-iOS
//
//  Created by Lukas Würzburger on 7/19/17.
//  Copyright © 2017 Truffls GmbH. All rights reserved.
//

import UIKit
import CoreGraphics

extension UIView {
    var transforms: [CGAffineTransform]? {
        get {
            return nil
        }
        set {
            var newTransform: CGAffineTransform?
            newValue?.forEach({
                if let t = newTransform {
                    newTransform = t.concatenating($0)
                } else {
                    newTransform = $0
                }
            })
            if let newTransform = newTransform {
                transform = newTransform
            }
        }
    }
}

/******
 * Example

 view.transforms = [
     CGAffineTransform(scaleX: 0.5, y: 0.5),
     CGAffineTransform(rotationAngle: -1.0),
     CGAffineTransform(translationX: 0, y: -25)
 ]
 */
