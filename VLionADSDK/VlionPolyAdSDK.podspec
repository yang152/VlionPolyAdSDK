Pod::Spec.new do |spec|

    spec.name         = "VlionPolyAdSDK"
    spec.version      = "1.0.0"
    spec.summary      = "瑞狮聚合SDK"
    
    spec.description  = <<-DESC
    瑞狮聚合SDK
    安装SDK使用下面的指令
    pod 'VlionPolyAdSDK'
                   DESC

    spec.homepage     = "https://github.com/yang152/VlionPolyAdSDK"

    spec.license      = { :type => "MIT", :file => "LICENSE" }

    spec.author       = { "1062565969@qq.com" => "1062565969@qq.com" }

    spec.platform     = :ios, "9.0"

    spec.source       = { :git => "https://github.com/advlion-com/gamecenter_sdk_ios.git", :tag => "#{spec.version}" }

    spec.vendored_frameworks = 'RSGameVlionAd.framework'
    spec.resource = 'RSGameVlionAd.bundle'
    spec.dependency 'Bytedance-UnionAD'
    
    valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']
    spec.xcconfig = {
      'VALID_ARCHS' =>  valid_archs.join(' '),
    }

end
