

Pod::Spec.new do |spec|

  spec.name         = "VLionAdSDKPoly"
  spec.version      = "3.7.0"
  spec.summary      = "VLionAdSDKPoly."

  spec.description  = <<-DESC
              TopOn SDK for developer
                   DESC

  spec.homepage     = "https://github.com/yang152/VlionPolyAdSDK"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "杨挺" => "1062565969@qq.com" }


  spec.ios.deployment_target = '9.0'
  
  spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}

  spec.frameworks = ["Foundation", "UIKit", "MobileCoreServices", "CoreGraphics", "Security", "SystemConfiguration", "CoreTelephony", "AdSupport", "CoreData", "StoreKit", "AVFoundation", "MediaPlayer", "CoreMedia", "WebKit", "Accelerate", "CoreLocation", "AVKit", "MessageUI", "QuickLook", "AddressBook"]
  spec.libraries = ["z", "resolv.9", "sqlite3", "c++", "c++abi"]
  
  spec.default_subspecs = 'VLionAdSDKPoly'
  spec.source       = { :git => "https://github.com/yang152/VlionPolyAdSDK.git", :tag => "#{spec.version}" }
  
  spec.subspec 'VLionAdSDKPoly' do |ss|
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionADSDK/VLionADSDK.framework'
     ss.resource = 'VLionAdSDKPoly/VLionADSDK/VLionAdImg.bundle'
  end
  
  spec.subspec 'VLionADSDKKSAdapter' do |ss|
     ss.dependency 'VLionAdSDKPoly/VLionAdSDKPoly'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionADSDKKSAdapter/VLionADSDKKSAdapter.framework'
     ss.dependency 'KSAdSDK', '~> 3.2.1'
  end
  

  

end
