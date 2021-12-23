Pod::Spec.new do |s|
s.name         = "YYKVStorage+ReWriteDBInitialize" 
s.version      = "0.1.0"        
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.summary      = "YYKVStorage+ReWriteDBInitialize.h" 

s.homepage     = "https://github.com/xuk3r/YYCache-ReWriteDBInitialize" # 仓库的主页
s.source       = { :git => "https://github.com/xuk3r/YYCache-ReWriteDBInitialize.git", :tag => "#{s.version}" }
s.source_files = "*.{h,m,swift}"
s.requires_arc = true # 是否启用ARC
s.platform     = :ios, "10.0" #平台及支持的最低版本
s.dependency    "YYCache" # 依赖库
# s.frameworks   = "UIKit", "Foundation" #支持的框架
s.author             = { "xuk3r" => "a4101823@126.com" }
s.social_media_url   = "https://github.com/xuk3r"

end
