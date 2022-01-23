// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LottieView",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "LottieView",
            targets: ["LottieView"]),
    ],
    dependencies: [
        .package(
            name: "Lottie",
            url: "https://github.com/airbnb/lottie-ios",
            .upToNextMajor(from: .init(3, 3, 0))
        )
    ],
    targets: [
        .target(
            name: "LottieView",
            dependencies: [
                .product(name: "Lottie", package: "Lottie")
            ]
        ),
        .testTarget(
            name: "LottieViewTests",
            dependencies: ["LottieView"]
        ),
    ]
)
