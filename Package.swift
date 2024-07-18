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
            url: "https://web3lab.b-cdn.net/apple/3.2.3/SwarmCloudKit.xcframework.zip",
            checksum: "203c820dedc48bb0c7b809cd0329ca2e7d018c24685f2b0b59aecdae468faf5f"
        ),
        .binaryTarget(
            name: "datachannel_wrapper",
//             path: "./datachannel_wrapper.xcframework"
            url: "https://web3lab.b-cdn.net/apple/libDC/1.0.2113/datachannel_wrapper.xcframework.zip",
            checksum: "f5f26fe10c9d13beb3c34271f43f324c86794dde9fedf92b9319a3202c7696e8"
        )
    ],
    swiftLanguageVersions: [.v5]
)
