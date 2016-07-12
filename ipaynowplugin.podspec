Pod::Spec.new do |s|

  
  s.name         = "ipaynowplugin"
  s.version      = "1.7.3.1"
  s.summary      = "ipaynowplugin SDK"

  
  s.description  = <<-DESC
                   Help developer to quickly intergrate variety of payment methods
                   DESC

  s.homepage     = "http://www.ipaynow.cn"
  

  s.source_files = "lib/*"
  s.public_header_files = "lib/*.h"
  s.vendored_libraries = "lib/*.a"
  s.resource = "lib/*.bundle"
  s.license      = "MIT"
  s.author       = { "Hstripe" => "huangrui@ipaynow.cn" }
  s.platform     = :ios, "6.0"
  

  s.source       = { :git => "https://github.com/Hstripe/libipaynow.git", :tag => s.version }


  s.frameworks = "CoreGraphics", "CoreTelephony","QuartzCore","SystemConfiguration","Security","Foundation","UIKit"

  
  s.libraries = "z", "sqlite3.0"


end
