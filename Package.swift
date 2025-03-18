// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShapeAreas",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ShapeAreas",
            targets: ["ShapeAreas"]),
    ],
    dependencies: [
        // Add your external dependencies here
        .package(url: "https://github.com/psupreet12/ShapeAreas.git", .exact("1.0.0")) ,
        .package(url: "https://github.com/psupreet12/ShapeAreas.git", .exact("1.1.0"))// Add this line
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ShapeAreas"),
        .testTarget(
            name: "ShapeAreasTests",
            dependencies: ["ShapeAreas"]),
    ]
)
