@version = '1.4'

Pod::Spec.new do |s|
  
  s.name            = 'Iconic'
  s.version         = @version
  s.summary         = 'Auto-generated icon font library for iOS [beta]'
  s.description     = 'Iconic will help you make icon fonts integration on iOS easy and effortless. Its main component is in charge of auto-generating strongly typed code in Swift, fully compatible with Objective-C, allowing the integration of vector icons as image or text in your apps.'
  
  s.homepage        = 'https://github.com/dzenbot/Iconic'
  s.screenshots     = ''
  s.author          = { 'Ignacio Romero Zurbuchen' => 'iromero@dzen.cl' }
  
  s.license = {
      :type => 'MIT',
      :file => 'LICENSE'
  }
  
  s.source = {
      :git => 'https://github.com/dzenbot/Iconic.git',
      :tag => @version
  }
  
  s.source_files    = 'Source/*.{swift}'
  s.resources       = 'Source/**/*.{ttf,otf}'
  s.preserve_paths  = 'Source/Catalog/**/*.*'
  s.framework       = 'UIKit', 'CoreText'
  
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.pod_target_xcconfig = {
      'ENABLE_BITCODE' => 'NO',
      'SWIFT_VERSION' => '3.0',
  }
  
  s.prepare_command = "sh Source/Iconizer.sh '#{ENV['FONT_PATH']}' --verbose"
end
