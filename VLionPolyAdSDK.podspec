

Pod::Spec.new do |spec|

  spec.name         = "VLionPolyAdSDK"
  spec.version      = "1.0.7"
  spec.summary      = "VLionPolyAdSDK."

  spec.description  = <<-DESC
              TopOn SDK for developer
                   DESC

  spec.homepage     = "https://github.com/yang152/VlionPolyAdSDK"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "杨挺" => "1062565969@qq.com" }


  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = '9.0'
  spec.requires_arc = true
  spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']
  
  spec.default_subspecs = 'VLionADSDK'
  
  spec.source       = { :git => "https://github.com/yang152/VlionPolyAdSDK.git", :tag => "#{spec.version}" }

  spec.vendored_frameworks = 'VLionADSDK/VLionADSDK.framework'
  
  spec.subspec 'VLionADSDK' do |ss|
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionADSDK/VLionADSDK.framework'
     ss.resource = 'VLionADSDK/VLionAdImg.bundle'
  end
  
  spec.subspec 'VLionADSDKBDAdapter' do |ss|
     ss.dependency 'VLionADSDK/VLionADSDK.framework'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionADSDKBDAdapter/VLionADSDKBDAdapter.framework'
     ss.dependency 'BaiduMobAd_SDK'
  end
  
  spec.subspec 'VLionADSDKBUAdapter' do |ss|
     ss.dependency 'VLionADSDK/VLionADSDK.framework'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionADSDKBUAdapter/VLionADSDKBUAdapter.framework'
     ss.dependency 'Bytedance-UnionAD'
  end
  
  spec.subspec 'VLionADSDKGDTAdapter' do |ss|
     ss.dependency 'VLionADSDK/VLionADSDK.framework'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionADSDKGDTAdapter/VLionADSDKGDTAdapter.framework'
     ss.dependency 'GDTMobSDK'
  end
  
  spec.subspec 'VLionADSDKIMBAdapter' do |ss|
     ss.dependency 'VLionADSDK/VLionADSDK.framework'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionADSDKIMBAdapter/VLionADSDKIMBAdapter.framework'
     ss.dependency 'InMobiSDK-China', '~> 7.4.3'
  end
  
  spec.subspec 'VLionADSDKKSAdapter' do |ss|
     ss.dependency 'VLionADSDK/VLionADSDK.framework'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionADSDKKSAdapter/VLionADSDKKSAdapter.framework'
     ss.dependency 'KSAdSDK'
  end
  
  spec.subspec 'VLionADSDKSGBAdapter' do |ss|
     ss.dependency 'VLionADSDK/VLionADSDK.framework'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionADSDKSGBAdapter/VLionADSDKSGBAdapter.framework'
     ss.dependency 'SigmobAd-iOS'
  end
  

end
