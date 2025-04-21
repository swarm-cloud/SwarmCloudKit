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
            url: "https://web3lab.b-cdn.net/apple/3.4.0/SwarmCloudKit.xcframework.zip",
            checksum: "4ad9954a8c2e32bf4555e7d574775c29693fe5bf15d752dc9d763c3668051db8"
        ),
        .binaryTarget(
            name: "datachannel_wrapper",
//             path: "./datachannel_wrapper.xcframework"
            url: "https://web3lab.b-cdn.net/apple/libDC/1.0.226/datachannel_wrapper.xcframework.zip",
            checksum: "f6bdcfce98a31486c855e49e5779b922e41bd29345fc0ae6f28cbf1d13a942b3"
        )
    ],
    swiftLanguageVersions: [.v5]
)
