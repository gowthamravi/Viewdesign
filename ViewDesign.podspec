#
# Be sure to run `pod lib lint ViewDesign.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ViewDesign'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ViewDesign.'
  s.homepage         = 'https://github.com/gowthamravi/Viewdesign'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gowtham' => 'gowtham.r3@gmail.com' }
  s.source           = { :git => 'https://github.com/gowthamravi/Viewdesign.git', :tag => s.version, :submodules => true }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
 s.requires_arc = true

  s.ios.deployment_target = '8.0'

 s.public_header_files = 'ViewDesign/ViewDesign.h'
  s.source_files = 'ViewDesign/Classes'
  
  # s.resource_bundles = {
  #   'ViewDesign' => ['ViewDesign/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
