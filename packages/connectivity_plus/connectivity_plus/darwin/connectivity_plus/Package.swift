// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "connectivity_plus",
    platforms: [
        .iOS("12.0"),
        .macOS("10.14")
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
            dependencies: [],
            resources: [
                .process("Resources"),
            ]
        )
    ]
)