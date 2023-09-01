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
            ]
        ),
        .binaryTarget(
            name: "SwarmCloudKit",
//             path: "./SwarmCloudKit.xcframework"
            url: "https://github.com/swarm-cloud/SwarmCloudKit/releases/download/xcframework-3.0.0/SwarmCloudKit.xcframework.zip",
            checksum: "5f1aa96dcb4ea1c99f04c52d61fc8f42a6b0799cc215055541a7b292db5e2243",
            
        ),
        .binaryTarget(
            name: "datachannel_wrapper",
//             path: "./datachannel_wrapper.xcframework"
            url: "https://github.com/swarm-cloud/datachannel-native/releases/download/apple-1.0.8/datachannel_wrapper.xcframework.zip",
            checksum: "e891db14503689c873c8f666d501acea0d8a8fea18a4088975f4c77e3198d01b"
        )
    ],
    swiftLanguageVersions: [.v5]
)
