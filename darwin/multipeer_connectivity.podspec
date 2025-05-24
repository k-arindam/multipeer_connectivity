#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint multipeer_connectivity.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'multipeer_connectivity'
  s.version          = '0.0.1'
  s.summary          = 'Flutter Multipeer Connectivity Plugin!'
  s.description      = <<-DESC
Flutter Multipeer Connectivity Plugin!
                       DESC
  s.homepage         = 'https://multipeerconnectivity.karindam.in'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Arindam Karmakar' => 'connect@karindam.in' }
  s.source           = { :path => '.' }
  s.source_files = 'multipeer_connectivity/Sources/multipeer_connectivity/**/*.swift'

  s.ios.dependency 'Flutter'
  s.osx.dependency 'FlutterMacOS'

  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.14'

  # s.platform = { :ios => '12.0', :osx => '10.14' }

  # s.platform = :ios, '12.0'
  # s.platform = :osx, '10.11'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  s.resource_bundles = {'multipeer_connectivity_privacy' => ['multipeer_connectivity/Sources/multipeer_connectivity/Resources/PrivacyInfo.xcprivacy']}
end
