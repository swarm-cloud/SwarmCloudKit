// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwarmCloudKit",
    platforms: [.macOS(.v10_15),
                .iOS(.v13),
                .tvOS(.v13)],
    products: [
        .library(
            name: "SwarmCloudKit",
            targets: ["SwarmCloudKitWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from:"5.0.1")
    ],
    targets: [
        .target(
            name: "SwarmCloudKitWrapper",
            dependencies: [
                .target(name: "SwarmCloudKit"),
                .target(name: "datachannel_wrapper"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON")
            ],
            path: "SwarmCloudKitWrapper"
        ),
        .binaryTarget(
            name: "SwarmCloudKit",
//             path: "./SwarmCloudKit.xcframework"
            url: "https://cdn.swarmcloud.net/apple/v3.0.0/SwarmCloudKit.xcframework.zip",
            checksum: "5f1aa96dcb4ea1c99f04c52d61fc8f42a6b0799cc215055541a7b292db5e2243"
            
        ),
        .binaryTarget(
            name: "datachannel_wrapper",
//             path: "./datachannel_wrapper.xcframework"
            url: "https://cdn.swarmcloud.net/apple/libDC/v1.0.8/datachannel_wrapper.xcframework.zip",
            checksum: "210cd0e7a34082629b7335f685ab4c3848c0732d655b200273c1287843373921"
        )
    ],
    swiftLanguageVersions: [.v5]
)
