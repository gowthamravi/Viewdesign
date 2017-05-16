#
# Be sure to run `pod lib lint ViewDesign.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = "ViewDesign"
s.version          = "0.2.0"
s.summary          = "A subclass on UILabel that provides a blink."
s.description      = <<-DESC
This CocoaPod provides the ability to use a UILabel that may be started and stopped blinking.
DESC
s.homepage         = 'https://github.com/gowthamravi/Viewdesign'
s.license          = { :type => "MIT", :file => "LICENSE" }
s.author           = { 'Gowtham' => 'gowtham.r3@gmail.com' }
s.source           = { :git => 'https://github.com/gowthamravi/Viewdesign.git', :tag => '0.2.0' }
s.platform     = :ios, "8.0"
s.requires_arc = true
s.source_files = 'ViewDesign/Classes/**/*'

end
