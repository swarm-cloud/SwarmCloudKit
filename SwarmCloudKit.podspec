Pod::Spec.new do |s|
    s.name = 'SwarmCloudKit'
    s.version = '3.2.2'
    s.license = { :type => 'Commercial', :file => 'SwarmCloudKit/LICENSE.md' }
    s.summary = 'P2P Streaming Engine for iOS, tvOS and macOS.'
    s.homepage = 'https://www.swarmcloud.net/'
    s.authors = { 'SwarmCloud' => 'cdnbye@gmail.com' }
    s.documentation_url = 'https://www.swarmcloud.net/ios'

    s.ios.deployment_target = '13.0'
    s.osx.deployment_target = '10.15'
    s.tvos.deployment_target = '13.0'

    s.swift_versions = ['5']

    s.source        = { :http => "https://web3lab.b-cdn.net/apple/3.2.2/SwarmCloudKit.zip" }

    s.vendored_frameworks = 'SwarmCloudKit/SwarmCloudKit.xcframework', 'SwarmCloudKit/datachannel_wrapper.xcframework'

end