Pod::Spec.new do |s|
  s.name = 'SwarmCloudKit'
  s.version = '3.0.3'
  s.license = 'MIT'
  s.summary = 'P2P Streaming Engine for iOS, tvOS and macOS.'
  s.homepage = 'https://www.cdnbye.com/en/'
  s.authors = { 'SwarmCloud' => 'cdnbye@gmail.com' }
  s.documentation_url = 'https://www.cdnbye.com/en/views/ios/v3/usage.html'

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'

  s.swift_versions = ['5']

  s.source        = { :http => 'https://web3lab.b-cdn.net/apple/v3.0.3/SwarmCloudKit.zip' }

  s.dependency 'SwiftyJSON', '~> 5.0'

  s.vendored_frameworks = 'SwarmCloudKit/SwarmCloudKit.xcframework', 'SwarmCloudKit/datachannel_wrapper.xcframework'

end