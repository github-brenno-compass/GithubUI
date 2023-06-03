// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GithubUI",
    defaultLocalization: "pt_BR",
    platforms: [.iOS(.v16), .watchOS(.v9), .tvOS(.v16), .macOS(.v13)],
    products: [
        .library(
            name: "GithubUI",
            targets: ["GithubUI"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "GithubUI",
            dependencies: [],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "GithubUITests",
            dependencies: ["GithubUI"]
        )
    ]
)
