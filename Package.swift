// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "c-swiftRDM",
    products: [
        .library(name: "Crdm", targets: ["RDM"]),
    ],
    targets: [
        .systemLibrary(name: "RDM", pkgConfig: "RDM"),
    ]
)
