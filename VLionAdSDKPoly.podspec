

Pod::Spec.new do |spec|

  spec.name         = "VLionAdSDKPoly"
  spec.version      = "3.7.1"
  spec.summary      = "VLionAdSDKPoly."

  spec.description  = <<-DESC
              TopOn SDK for developer
                   DESC

  spec.homepage     = "https://github.com/yang152/VlionPolyAdSDK"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "杨挺" => "1062565969@qq.com" }


  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = '9.0'
  spec.requires_arc = true
  valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']
  
  spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  spec.libraries = 'c++', 'z', 'sqlite3', 'xml2', 'resolv'
  
  spec.default_subspecs = 'VLionAdSDKPoly'
  spec.source       = { :git => "https://github.com/yang152/VlionPolyAdSDK.git", :tag => "#{spec.version}" }
  
  spec.subspec 'VLionAdSDKPoly' do |ss|
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionADSDK/VLionADSDK.framework'
     ss.resource = 'VLionAdSDKPoly/VLionADSDK/VLionAdImg.bundle'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionADSDKBDAdapter' do |ss|
     ss.dependency 'VLionAdSDKPoly/VLionAdSDKPoly'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionADSDKBDAdapter/VLionADSDKBDAdapter.framework'
     ss.dependency 'BaiduMobAd_SDK'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionADSDKBUAdapter' do |ss|
     ss.dependency 'VLionAdSDKPoly/VLionAdSDKPoly'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionADSDKBUAdapter/VLionADSDKBUAdapter.framework'
     ss.dependency 'Bytedance-UnionAD'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
     ss.xcconfig = {
       'VALID_ARCHS' =>  valid_archs.join(' '),
     }
  end

  
  spec.subspec 'VLionADSDKGDTAdapter' do |ss|
     ss.dependency 'VLionAdSDKPoly/VLionAdSDKPoly'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionADSDKGDTAdapter/VLionADSDKGDTAdapter.framework'
     ss.dependency 'GDTMobSDK'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionADSDKIMBAdapter' do |ss|
     ss.dependency 'VLionAdSDKPoly/VLionAdSDKPoly'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionADSDKIMBAdapter/VLionADSDKIMBAdapter.framework'
     ss.dependency 'InMobiSDK-China', '~> 7.4.3'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionADSDKKSAdapter' do |ss|
     ss.dependency 'VLionAdSDKPoly/VLionAdSDKPoly'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionADSDKKSAdapter/VLionADSDKKSAdapter.framework'
     ss.dependency 'RSPodKSAdaper'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
     ss.pod_target_xcconfig = { 'skip_validation' => true }
  end
  
  spec.subspec 'VLionADSDKSGBAdapter' do |ss|
     ss.dependency 'VLionAdSDKPoly/VLionAdSDKPoly'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionADSDKSGBAdapter/VLionADSDKSGBAdapter.framework'
     ss.dependency 'SigmobAd-iOS'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionADSDKMGTAdapter' do |ss|
     ss.dependency 'VLionAdSDKPoly/VLionAdSDKPoly'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionADSDKMGTAdapter/VLionADSDKMGTAdapter.framework'
     ss.dependency 'MintegralAdSDK'
     ss.dependency 'MintegralAdSDK/NativeAdvancedAd'
     ss.dependency 'MintegralAdSDK/RewardVideoAd'
     ss.dependency 'MintegralAdSDK/InterstitialVideoAd'
     ss.dependency 'MintegralAdSDK/BannerAd'
     ss.dependency 'MintegralAdSDK/SplashAd'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'RSGameVlionAd' do |ss|
     ss.dependency 'VLionAdSDKPoly/VLionAdSDKPoly'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/RSGameVlionAd/RSGameVlionAd.framework'
     ss.resource = 'VLionAdSDKPoly/RSGameVlionAd/RSGameVlionAd.bundle'
     
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionNewsSDK' do |ss|
     ss.dependency 'VLionAdSDKPoly/VLionAdSDKPoly'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionAdSDKPoly/VLionNewsSDK/VLionNewsSDK.framework'
     
     ss.dependency 'MJRefresh'
     
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  

end
