

Pod::Spec.new do |spec|

  spec.name         = "VLionPolyAdSDK"
  spec.version      = "1.0.8"
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
  
  spec.default_subspecs = 'VLionPolyAdSDK'
  spec.source       = { :git => "https://github.com/yang152/VlionPolyAdSDK.git", :tag => "#{spec.version}" }
  
  spec.subspec 'VLionPolyAdSDK' do |ss|
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionPolyAdSDK/VLionADSDK/VLionADSDK.framework'
     ss.resource = 'VLionPolyAdSDK/VLionADSDK/VLionAdImg.bundle'
  end
  
  spec.subspec 'VLionADSDKBDAdapter' do |ss|
     ss.dependency 'VLionPolyAdSDK/VLionPolyAdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionPolyAdSDK/VLionADSDKBDAdapter/VLionADSDKBDAdapter.framework'
     ss.dependency 'BaiduMobAd_SDK'
  end
  
  spec.subspec 'VLionADSDKBUAdapter' do |ss|
     ss.dependency 'VLionPolyAdSDK/VLionPolyAdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionPolyAdSDK/VLionADSDKBUAdapter/VLionADSDKBUAdapter.framework'
     ss.dependency 'Bytedance-UnionAD'
  end
  
  spec.subspec 'VLionADSDKGDTAdapter' do |ss|
     ss.dependency 'VLionPolyAdSDK/VLionPolyAdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionPolyAdSDK/VLionADSDKGDTAdapter/VLionADSDKGDTAdapter.framework'
     ss.dependency 'GDTMobSDK'
  end
  
  spec.subspec 'VLionADSDKIMBAdapter' do |ss|
     ss.dependency 'VLionPolyAdSDK/VLionPolyAdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionPolyAdSDK/VLionADSDKIMBAdapter/VLionADSDKIMBAdapter.framework'
     ss.dependency 'InMobiSDK-China', '~> 7.4.3'
  end
  
  spec.subspec 'VLionADSDKKSAdapter' do |ss|
     ss.dependency 'VLionPolyAdSDK/VLionPolyAdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionPolyAdSDK/VLionADSDKKSAdapter/VLionADSDKKSAdapter.framework'
     ss.dependency 'KSAdSDK'
  end
  
  spec.subspec 'VLionADSDKSGBAdapter' do |ss|
     ss.dependency 'VLionPolyAdSDK/VLionPolyAdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'VLionPolyAdSDK/VLionADSDKSGBAdapter/VLionADSDKSGBAdapter.framework'
     ss.dependency 'SigmobAd-iOS'
  end
  

end