#
# Be sure to run `pod lib lint WXLibSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WXLibSwift'
  s.version          = '0.1.2'
  s.summary          = 'A short description of WXLibSwift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  WechatOpenSDK-XCFramework封装，方便swift调用
                       DESC

  s.homepage         = 'https://github.com/ZClee128/WXLibSwift.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lzc' => '876231865@qq.com' }
  s.source           = { :git => 'https://github.com/ZClee128/WXLibSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
#  s.requires_arc = true
#  s.static_framework = true
  s.frameworks  = 'Security', 'CoreGraphics', 'WebKit'
  s.libraries = 'z', 'c++'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }
  s.default_subspec = 'Pay'
  
  s.subspec 'Core' do |co|
    co.source_files = 'WXLibSwift/Classes/**/*'
    co.public_header_files = 'WXLibSwift/Classes/**/*.h'
  end
  
  s.subspec 'Pay' do |pay|
    pay.dependency 'WXLibSwift/Core'
    pay.vendored_frameworks = 'WXLibSwift/Frameworks/Pay/WechatOpenSDK-XCFramework.xcframework'
  end

  s.subspec 'NoPay' do |noPay|
    noPay.dependency 'WXLibSwift/Core'
    noPay.vendored_frameworks = 'WXLibSwift/Frameworks/NoPay/WechatOpenSDK-XCFramework.xcframework'
  end
end
