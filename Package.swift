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
    targets: [
        .target(
            name: "SwarmCloudKitWrapper",
            dependencies: [
                .target(name: "SwarmCloudKit"),
                .target(name: "datachannel_wrapper")
            ],
            path: "SwarmCloudKitWrapper"
        ),
        .binaryTarget(
            name: "SwarmCloudKit",
//             path: "./SwarmCloudKit.xcframework"
            url: "https://web3lab.b-cdn.net/apple/3.2.1/SwarmCloudKit.zip",
            checksum: "42e2953fa52fe8c5273d2bf3cc2a70ce9342776a3c385e08136dd4bd087712a6"
        ),
        .binaryTarget(
            name: "datachannel_wrapper",
//             path: "./datachannel_wrapper.xcframework"
            url: "https://web3lab.b-cdn.net/apple/libDC/1.0.211/datachannel_wrapper.xcframework.zip",
            checksum: "c7cbc55433b453eb6bc384cfda9e68adcd6e01884525c5a58f4567a415d44e06"
        )
    ],
    swiftLanguageVersions: [.v5]
)
