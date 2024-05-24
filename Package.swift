// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "Tweaks",
    defaultLocalization: "en",
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "Tweaks",
            targets: ["Tweaks"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Tweaks",
            dependencies: [],
            path: "FBTweak",
            linkerSettings: [
                .linkedFramework("UIKit"),
            ]
        ),
        .testTarget(
            name: "UnitTests",
            dependencies: [
                .byName(name: "Tweaks"),
            ],
            path: "FBTweakTests"
        ),
    ]
)
