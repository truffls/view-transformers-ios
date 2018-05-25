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

    /**
     Applies multiple `CGAffineTransform`s at once.
     Set it to `nil` or use the `resetTransforms` method to reset the transformation to the inital state.
     */
    public var transforms: [CGAffineTransform]? {
        get { return [transform] }
        set {
            if let new = newValue, new.count > 0 {
                transform = concatenatedTransforms(new)!
            } else {
                transform = resetTransform
            }
        }
    }

    public func resetTransforms() {
        transforms = nil
    }

    // MARK: - Helper

    private func concatenatedTransforms(_ transforms: [CGAffineTransform]) -> CGAffineTransform? {
        var newTransform: CGAffineTransform?
        transforms.forEach({
            if let transform = newTransform {
                newTransform = transform.concatenating($0)
            } else {
                newTransform = $0
            }
        })
        return newTransform
    }

    private var resetTransform: CGAffineTransform {
        return CGAffineTransform(scaleX: 1, y: 1)
    }
}

