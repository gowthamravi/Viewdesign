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
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gowtham' => 'gowtham.r3@gmail.com' }
  s.source           = { :git => 'https://github.com/gowthamravi/Viewdesign.git', :tag => s.version.to_s }
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.source_files = 'Pod/Classes/**/*'

end
