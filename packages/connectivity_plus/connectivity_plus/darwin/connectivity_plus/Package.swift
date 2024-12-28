// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "connectivity_plus",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "connectivity_plus",
            targets: ["connectivity_plus"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leasual/plus_plugins.git",
            .branch("privacy-manifest")
        )
    ],
    targets: [
        .target(
            name: "connectivity_plus",
            path: "packages/connectivity_plus/connectivity_plus/ios/connectivity_plus/Sources/connectivity_plus",
            resources: [
                .process("Resources/PrivacyInfo.xcprivacy")
            ]
        )
    ]
)