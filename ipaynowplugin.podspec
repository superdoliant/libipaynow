Pod::Spec.new do |s|

  
  s.name         = "ipaynowplugin"
  s.version      = "1.7.3.41"
  s.summary      = "ipaynowplugin SDK"
  s.description  = <<-DESC
                   Help developer to quickly intergrate variety of payment methods
                   DESC
  s.homepage     = "http://www.ipaynow.cn"
  s.license      = "MIT"
  s.author       = { "Hstripe" => "huangrui@ipaynow.cn" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/Hstripe/libipaynow.git", :tag => s.version }
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |core|
    core.source_files = "lib/*.h"
    core.public_header_files = "lib/*.h"
    core.vendored_libraries = "lib/*.a"
    core.resource = "lib/*.bundle"
    core.frameworks = "CoreGraphics", "CoreTelephony","QuartzCore","SystemConfiguration","Security","Foundation","UIKit"
    core.ios.libraries = "z", "sqlite3.0"
  end

  s.subspec 'Alipay' do |ali|
    ali.ios.vendored_frameworks = 'lib/Channels/AliPayPlugin/AlipaySDK.framework'
    ali.resource = 'lib/Channels/AliPayPlugin/AlipaySDK.bundle'
    ali.dependency 'ipaynowplugin/Core'
    ali.frameworks = 'CoreMotion'
  end
 
  s.subspec 'Weixin' do |wx|
    wx.vendored_libraries = 'lib/Channels/WechatPlugin/*.a'
    wx.source_files = 'lib/Channels/WechatPlugin/*.h'
    wx.public_header_files = 'lib/Channels/WechatPlugin/*.h'
    wx.dependency 'ipaynowplugin/Core'
  end
  
  # s.subspec 'Unionpay' do |up|
  #   up.vendored_libraries = 'lib/Channels/UPPayPlugin/*.a'
  #   up.source_files = 'lib/Channels/UPPayPlugin/*.h'
  #   up.dependency 'ipaynowplugin/Core'
  # end
  
  # s.subspec 'BaiduWallet' do |bd|
  #   bd.resource = 'lib/Channels/BDWalletSDK/*.bundle'
  #   bd.public_header_files = 'lib/Channels/BDWalletSDK/Library/**/*.h'
  #   bd.vendored_libraries = 'lib/Channels/BDWalletSDK/*.a'
  #   bd.source_files = 'lib/Channels/BDWalletSDK/Library/**/*.h'
  #   bd.dependency 'ipaynowplugin/Core'
  # end

  # s.subspec 'ApplePay' do |ap|
  #   ap.source_files = 'lib/Channels/UPApplePay/*.h'
  #   ap.public_header_files = 'lib/Channels/UPApplePay/*.h'
  #   ap.vendored_libraries = 'lib/Channels/UPApplePay/*.a'
  #   ap.dependency 'ipaynowplugin/Core'
  #   ap.frameworks = "PassKit"
  # end


end
