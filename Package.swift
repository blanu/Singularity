// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Singularity",
    platforms: [
        .macOS(.v11)
    ],
    dependencies: [
        .package(url: "https://github.com/swift-cloud/Compute", branch: "main"),
        .package(url: "https://github.com/TokamakUI/Tokamak", from: "0.11.1")
    ],
    targets: [
        .executableTarget(
            name: "Singularity",
            dependencies: ["Compute"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
