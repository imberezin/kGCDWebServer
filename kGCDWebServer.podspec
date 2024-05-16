

Pod::Spec.new do |s|
  s.name     = 'kGCDWebServer'
  s.version  = '4.0.0'
  s.author   =  { 'imbe' => 'imberezin@pol-online.net' }
  s.license  = { :type => 'BSD', :file => 'LICENSE' }
  s.homepage = 'https://github.com/imberezin/kGCDWebServer'
  s.summary  = 'Lightweight GCD based HTTP server for OS X & iOS (includes web based uploader & WebDAV server)'
  
  s.source   = { :git => 'https://github.com/imberezin/kGCDWebServer.git', :tag => s.version.to_s }
  s.ios.deployment_target = '15.0'
  s.tvos.deployment_target = '15.0'
  s.osx.deployment_target = '13.0'
  s.requires_arc = true
  
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |cs|
    cs.source_files = '**/*.{h,m}'
    cs.private_header_files = "GCDWebServer/Core/GCDWebServerPrivate.h"
    cs.requires_arc = true
    cs.ios.library = 'z'
    cs.ios.frameworks = 'CoreServices', 'CFNetwork'
    cs.tvos.library = 'z'
    cs.tvos.frameworks = 'CoreServices', 'CFNetwork'
    cs.osx.library = 'z'
    cs.osx.framework = 'SystemConfiguration'
    
    cs.resource_bundles = {
            "#{s.name}" => [
                'PrivacyInfo.xcprivacy',
            ]
        }
  end

end
