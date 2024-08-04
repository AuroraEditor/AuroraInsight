// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "AuroraInsight",
    platforms: [.macOS(.v13), .macCatalyst(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AuroraInsight",
            targets: ["AuroraInsight"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/ChimeHQ/JSONRPC",
            from: "0.9.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AuroraInsight",
            dependencies: [
                "JSONRPC"
            ]
        ),
        .testTarget(
            name: "AuroraInsightTests",
            dependencies: ["AuroraInsight"]
        ),
    ]
)
