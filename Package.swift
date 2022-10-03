// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "swift-spi-demo",
    products: [
        .library(
            name: "swift-spi-demo",
            targets: ["Shopping"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Shopping",
            dependencies: [],
            swiftSettings: [
                .unsafeFlags(["-enable-library-evolution"]),
//                .unsafeFlags(["-Xfrontend", "-experimental-spi-only-imports"]) // requires Swift 5.8
            ]
        ),
        .testTarget(
            name: "ShoppingTests",
            dependencies: ["Shopping"]
        ),
    ]
)
