// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ShapeAreas",
    platforms: [
         .iOS(.v13)
     ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .executable(name: "ShapeAreas", targets: ["ShapeAreas"])
    ],
    dependencies: [
        // Add your external dependencies here
        .package(url: "https://github.com/psupreet12/ShapeAreas.git", .upToNextMajor(from: "3.0.0")) // Add this line
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ShapeAreas"),
    ]
)
