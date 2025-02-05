// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.6.0"
let checksum = "8fb2dc19a9030b70219fbbe55f52b86f19d9ba9bbc6ae84d17d6062d30293ab8"

let package = Package(
    name: "OpenCV-SPM",
    platforms: [
        .macOS(.v10_13), .iOS(.v12), .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "OpenCV-SPM",
            targets: ["opencv2"]),
    ],
    targets: [
        .binaryTarget(name: "opencv2",
                      url: "https://github.com/facephi-clienters/OpenCV-SPM/releases/download/\(version)/opencv2.xcframework.zip",
                      checksum: checksum),
    ]
)
