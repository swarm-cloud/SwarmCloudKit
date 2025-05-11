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
            url: "https://web3lab.b-cdn.net/apple/3.4.1/SwarmCloudKit.xcframework.zip",
            checksum: "20ff4f6b5341ff97d288c2b526889be1a20c5ecd83091fea52d6b1fede5a9061"
        ),
        .binaryTarget(
            name: "datachannel_wrapper",
//             path: "./datachannel_wrapper.xcframework"
            url: "https://web3lab.b-cdn.net/apple/libDC/1.0.226/datachannel_wrapper.xcframework.zip",
            checksum: "560c59ebd02810c47bf7974bd25fbfed7d4edb892eeabfc22a6e5cdb7e898b09"
        )
    ],
    swiftLanguageVersions: [.v5]
)
