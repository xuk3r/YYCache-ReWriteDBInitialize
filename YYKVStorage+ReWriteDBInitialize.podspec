Pod::Spec.new do |s|
  
  s.name         = "YYKVStorage-ReWriteDBInitialize"
  s.version      = "0.1.3"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.summary      = "YYKVStorage+ReWriteDBInitialize.h"
  s.homepage     = "https://github.com/xuk3r/YYCache-ReWriteDBInitialize"
  s.source       = { :git => "https://github.com/xuk3r/YYCache-ReWriteDBInitialize.git", :tag => "#{s.version}" }
  s.source_files = "*.{h,m,swift}"
  s.requires_arc = true
  s.platform     = :ios, "10.0"
  s.dependency    "YYCache"
  s.author             = { "xuk3r" => "a4101823@126.com" }
  s.social_media_url   = "https://github.com/xuk3r"

end
