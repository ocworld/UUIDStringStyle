#
# Be sure to run `pod lib lint UUIDStringStyle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UUIDStringStyle'
  s.version          = '1.0.0'
  s.summary          = 'uuidString의 Style을 지정하고 변경할 수 있는 기능을 제공합니다.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
uuidString의 Style을 지정하고 변경할 수 있는 기능을 제공합니다.
제공하는 Style과 예제는 아래와 같습니다.
canonical: E56D8738-C2EB-4021-A249-D125AAFE7F57
noHyphens: 055BD3A7178447DCA59C4E0A3F331B01
surroundingBraces: {EE64F84B-8126-4814-9C2E-A9E0A5BE3680}
urn: urn:uuid:E756CC57-F606-4FD0-8923-CD328F3BC68F
                       DESC

  s.homepage         = 'https://github.com/ocworld/UUIDStringStyle'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ocworld' => 'ocworld@gmail.com' }
  s.source           = { :git => 'https://github.com/ocworld/UUIDStringStyle.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'UUIDStringStyle/Sources/**/*'
  
  s.swift_version = '4.1'
  
  # s.resource_bundles = {
  #   'UUIDStringStyle' => ['UUIDStringStyle/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
