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
            url: "https://web3lab.b-cdn.net/apple/v3.0.3/SwarmCloudKit.xcframework.zip",
            checksum: "54d681dd97bcfe8753d22d507f88156fb053685952a88c6af7bcfe636477b262"
            
        ),
        .binaryTarget(
            name: "datachannel_wrapper",
//             path: "./datachannel_wrapper.xcframework"
            url: "https://web3lab.b-cdn.net/apple/libDC/1.0.190/datachannel_wrapper.xcframework.zip",
            checksum: "08c0b5f92cb34df6e2cbee809833096ea0eb2d0044fabcf4cb2f02d730df5073"
        )
    ],
    swiftLanguageVersions: [.v5]
)
