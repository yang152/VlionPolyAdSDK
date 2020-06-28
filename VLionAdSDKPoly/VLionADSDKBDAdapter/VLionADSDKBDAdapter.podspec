Pod::Spec.new do |spec|

    spec.name         = "VLionADSDKBDAdapter"
    spec.version      = "1.1.6"
    spec.summary      = "瑞狮聚合SDK"
    
    spec.description  = <<-DESC
    瑞狮聚合SDK
    安装SDK使用下面的指令
    pod 'VLionADSDKBDAdapter'
                   DESC

    spec.homepage     = "https://github.com/yang152/VlionPolyAdSDK"

    spec.license      = { :type => "MIT", :file => "LICENSE" }

    spec.author       = { "1062565969@qq.com" => "1062565969@qq.com" }

    spec.platform     = :ios, "9.0"

    spec.source       = { :git => "https://github.com/yang152/VlionPolyAdSDK.git", :tag => "#{spec.version}" }

    spec.vendored_frameworks = 'VLionADSDKBDAdapter.framework'
    spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}

    spec.dependency 'BaiduMobAd_SDK'
    spec.dependency 'VlionPolyAdSDK'

end