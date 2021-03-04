// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "Andrei_Palonski",
    defaultLocalization: "en",
    products: [
        .library(name: "MVVMC_HomeTask", type: .dynamic, targets: ["DangerDependencies"]),
    ],
    dependencies: [
        .package(name: "danger-swift", url: "https://github.com/danger/swift.git", from: "1.5.2"),
        .package(url: "https://github.com/realm/SwiftLint.git", from: "0.43.0")
    ],
    targets: [
        .target(
            name: "DangerDependencies",
            dependencies: [
                .product(name: "Danger", package: "danger-swift")
            ],
            path: "",
            sources: ["DangerRequiresThis.swift"]
        )]
)