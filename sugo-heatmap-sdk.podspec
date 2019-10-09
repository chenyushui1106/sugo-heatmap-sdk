
Pod::Spec.new do |spec|
spec.name                  = 'sugo-heatmap-sdk'
spec.module_name           = 'SugoHeatMap'
spec.version               = '1.1.0'
spec.license               = 'Apache License, Version 2.0'
spec.summary               = 'Official Sugo SDK for iOS (Objective-C)'
spec.homepage              = 'https://github.com/chenyushui1106/sugo-heatmap-sdk.git'
spec.author                = { 'sugo.io' => 'developer@sugo.io' }
spec.source                = { :git => 'https://github.com/chenyushui1106/sugo-heatmap-sdk.git', :tag => spec.version ,:branch => 'master-heatmap'}
spec.ios.deployment_target = '8.0'
spec.default_subspec       = 'core'

spec.subspec 'core' do |core|
    core.source_files           = 'SugoHeatMap/HeatMap/**/*.{m,h}'
    core.libraries              = 'icucore'
    core.dependency 'sugo-objc-sdk','~> 3.5.9'
    core.frameworks             = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'Accelerate', 'CoreGraphics', 'QuartzCore', 'WebKit', 'CoreData', 'CoreLocation'
end

end
