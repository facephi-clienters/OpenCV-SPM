// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.6.0"
let checksum = "8fb2dc19a9030b70219fbbe55f52b86f19d9ba9bbc6ae84d17d6062d30293ab8"

let package = Package(
    name: "OpenCV-SPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "OpenCV-SPM",
            targets: ["OpenCV-SPM", "opencv2"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "opencv2",
                      url: "https://github.com/facephi-clienters/OpenCV-SPM/releases/download/\(version)/opencv2.xcframework.zip",
                      checksum: checksum),
        .target(
            name: "OpenCV-SPM"),
    ]
)
