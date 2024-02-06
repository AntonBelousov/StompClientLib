// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "StompClientLib",
    platforms: [
       .iOS(.v13),
    ],
    products: [
        .library(
            name: "StompClientLib",
            targets: ["StompClientLib"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AntonBelousov/SocketRocket", .exact("0.7.1")),
    ],
    targets: [
        .target(
            name: "StompClientLib",
            dependencies: ["SocketRocket"],
            path: "./StompClientLib"
        )
    ]
)