// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Test-SPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "TestSDK", targets: ["TestSDK", "TestSDKMedia"]),
        .library(name: "TestSDKMedia", targets: ["TestSDKMedia"]),
        .library(name: "TestSDKMachineLearning", targets: ["TestSDKMachineLearning"])
   
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "TestSDK",
            path: "Sources/TestSDK.xcframework"
        ),
        .binaryTarget(
            name: "TestSDKMedia",
            path: "Sources/TestSDKMedia.xcframework"
        ),
        .binaryTarget(
            name: "TestSDKMachineLearning",
            path: "Sources/TestSDKMachineLearning.xcframework"
        )
    ]
)
