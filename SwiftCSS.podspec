#
# Be sure to run `pod lib lint SwiftCSS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SwiftCSS"
  s.version          = "1.0.0"
  s.summary          = "SwiftCSS extends UIView by providing CSS-like properties to position and size elements."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
Quickly style and size any element in your iOS app. Simply add elements like lables and buttons to your view and then use CSS-like attributes like .marginTop=50, width=30% to style them.
                       DESC

  s.homepage         = "https://github.com/soheil/SwiftCSS"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Soheil" => "ysoheil@gmail.com" }
  s.source           = { :git => "https://github.com/soheil/SwiftCSS.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/soheil'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'SwiftCSS'
  s.resource_bundles = {
    'SwiftCSS' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
