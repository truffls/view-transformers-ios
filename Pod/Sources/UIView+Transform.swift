//
//  UIView+Transform.swift
//  Transformers-iOS
//
//  Created by Lukas Würzburger on 12/13/17.
//  Copyright © 2017 Truffls GmbH. All rights reserved.
//

import UIKit
import CoreGraphics

extension UIView {
    public var transforms: [CGAffineTransform]? {
        get {
            return [transform]
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

