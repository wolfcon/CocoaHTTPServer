Pod::Spec.new do |spec|
  spec.name         = "CocoaHTTPServer"
  spec.version      = "2.3.1"
  spec.summary      = "A small, lightweight, embeddable HTTP server for Mac OS X or iOS applications."
  spec.license      = "BSD"
  spec.homepage     = "https://github.com/wolfcon/CocoaHTTPServer"
  spec.authors            = { 
    "Robbie Hanson" => "cocoahttpserver@googlegroups.com",
    "Frank" => "472730949@qq.com"
  }
  spec.source       = {
    :git => "https://github.com/robbiehanson/CocoaHTTPServer.git", :tag => spec.version
  }

  spec.source_files = "{Core,Extensions}/**/*.{h,m}"

  #  When using multiple platforms
  spec.ios.deployment_target = "12.0"
  spec.osx.deployment_target = "10.7"
  # spec.tvos.deployment_target = "9.0"
  # spec.visionos.deployment_target = "1.0"

  spec.ios.frameworks = "CFNetwork", "Security"
  spec.osx.frameworks =  "CoreServices", "Security"
  spec.libraries = "xml2"
  spec.requires_arc = true

  spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  spec.dependency "CocoaAsyncSocket"
  spec.dependency "CocoaLumberjack"

end
