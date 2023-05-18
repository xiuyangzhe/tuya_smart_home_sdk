#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint tuya_smart_home_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'tuya_smart_home_sdk'
  s.version          = '0.0.1'
  s.summary          = '涂鸦智能生活Flutter 第三方插件,官方最新5的版本'
  s.description      = <<-DESC
涂鸦智能生活Flutter 第三方插件,官方最新5的版本
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
