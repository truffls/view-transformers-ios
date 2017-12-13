Pod::Spec.new do |s|
    s.name = "ViewTransformers"
    s.version = "0.0.4"
    s.summary = "ViewTransformers lets you pass multiple transformations as an array to the UIView."
    s.author = "Truffls GmbH"
    s.license = { :type => "MIT" }
    s.homepage = "https://github.com/truffls/view-transformers-ios"
    s.platform = :ios
    s.source = { :git => "https://github.com/truffls/view-transformers-ios.git", :tag => "0.0.4" }
    s.source_files = "Pod/**/*.swift"
    s.ios.deployment_target = "9.0"
    s.ios.frameworks = [
        'UIKit', 'CoreGraphics'
    ]
    s.requires_arc = true
end

