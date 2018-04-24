![alt text](https://github.com/truffls/view-transformers-ios/raw/master/readme-images/logo.png "View Transformers")

![Swift Version](https://img.shields.io/badge/swift-4.1-orange.svg "Swift 4.1")
![Platform Compatibility](https://img.shields.io/badge/platform-ios-lightgrey.svg "Platform iOS")
![Pod version](https://img.shields.io/badge/pod-v1.0.0-blue.svg "Pod version 1.0.0")

ViewTransformers lets you pass multiple view transformations as an array to UIView.


### Install via Cocoapods

Add following to your `Podfile`:

```ruby
use_frameworks!
pod 'ViewTransformers'
```

### How to use

You can easily pass multiple view transformations to a UIView by using the `transforms` property on UIView.

```swift
view.transforms = [
    CGAffineTransform(scaleX: 0.5, y: 0.5),
    CGAffineTransform(rotationAngle: -1.42),
    CGAffineTransform(translationX: 100, y: -145)
]
```

Reading the transforms property only returns the merged transformations as one in a one-item-array.


### Example

![alt text](https://github.com/truffls/view-transformers-ios/raw/master/readme-images/example.gif "Example")

Used code for the example:

```swift
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
```

### Contribution

Issues and pull requests are welcome!
