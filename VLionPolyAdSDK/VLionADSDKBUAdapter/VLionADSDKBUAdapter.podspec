Pod::Spec.new do |spec|

    spec.name         = "VLionADSDKBUAdapter"
    spec.version      = "1.0.5"
    spec.summary      = "瑞狮聚合SDK"
    
    spec.description  = <<-DESC
    瑞狮聚合SDK
    安装SDK使用下面的指令
    pod 'VLionADSDKBUAdapter'
                   DESC

    spec.homepage     = "https://github.com/yang152/VlionPolyAdSDK"

    spec.license      = { :type => "MIT", :file => "LICENSE" }

    spec.author       = { "1062565969@qq.com" => "1062565969@qq.com" }

    spec.platform     = :ios, "9.0"

    spec.source       = { :git => "https://github.com/yang152/VlionPolyAdSDK.git", :tag => "#{spec.version}" }

    spec.vendored_frameworks = 'VLionADSDKBUAdapter/VLionADSDKBUAdapter.framework'
    spec.dependency 'Bytedance-UnionAD'
    spec.dependency 'VlionPolyAdSDK‘
    
end