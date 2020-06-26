// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Koloda",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(name: "Koloda", targets: ["Koloda"])
    ],
    dependencies: [
        .package(url: "https://github.com/GarthSnyder/pop.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "Koloda",
            dependencies: ["pop"],
            path: "Pod"
        )
    ],
    swiftLanguageVersions: [.v5]
)
