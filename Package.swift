// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "hands",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "hands",
            targets: [
                "hands",
                "hands_sdk_core",
                "hands_effect_player",
                "hands_scripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "hands",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/hands.zip",
            checksum: "bb49438daa9bb31ac01d7ad5b54a1efb474939c173c20ceb3d52ce4118bcdc27"
        ),
        .target(
            name: "hands_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "hands_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "hands_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
    ]
)
