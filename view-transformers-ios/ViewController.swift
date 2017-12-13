//
//  ViewController.swift
//  view-transformers-ios
//
//  Created by Lukas Würzburger on 12/13/17.
//  Copyright © 2017 Truffls GmbH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Variables

    @IBOutlet weak var myView: UIView!

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        playAnimation()
    }

    // MARK: - Animations

    func playAnimation() {
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveLinear, animations: {
            self.myView.transforms = [
                CGAffineTransform(scaleX: 0.5, y: 0.5),
                CGAffineTransform(rotationAngle: -1.42),
                CGAffineTransform(translationX: 100, y: -145)
            ]
        }, completion: { _ in
            UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveLinear, animations: {
                self.myView.transforms = [
                    CGAffineTransform(scaleX: 1, y: 1)
                ]
            }, completion: { _ in
                self.playAnimation()
            })
        })
    }
}
