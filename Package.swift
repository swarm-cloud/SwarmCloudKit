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
            url: "https://web3lab.b-cdn.net/apple/3.5.1/SwarmCloudKit.xcframework.zip",
            checksum: "cbe314c99cbebf2ef8b101ac3b06b3d0c95a375e428d53f2565a268ac17f6b0c"
        ),
        .binaryTarget(
            name: "datachannel_wrapper",
//             path: "./datachannel_wrapper.xcframework"
            url: "https://web3lab.b-cdn.net/apple/libDC/1.0.232/datachannel_wrapper.xcframework.zip",
            checksum: "6244e4da6c6901639e58014771ec4a86cf46f1c371a9ad6802bc190e54b4e466"
        )
    ],
    swiftLanguageVersions: [.v5]
)
