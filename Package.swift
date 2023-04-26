// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Test-SPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "AmazonChimeSDK", targets: ["AmazonChimeSDK", "AmazonChimeSDKMedia"]),
        .library(name: "AmazonChimeSDKMedia", targets: ["AmazonChimeSDKMedia"]),
        .library(name: "AmazonChimeSDKMachineLearning", targets: ["AmazonChimeSDKMachineLearning"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "AmazonChimeSDK",
            url: "https://spm-dingyshe.s3.us-west-2.amazonaws.com/AmazonChimeSDK-0.23.0.zip",
            checksum: "ac54d52fd33082c2436bdfdf090be3c1414c1bc585190c2e4bad01e08464a0ce"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://spm-dingyshe.s3.us-west-2.amazonaws.com/AmazonChimeSDKMedia-0.18.0.zip",
            checksum: "4c013ae42339ce6bf9824a79ecf6ac8ce637584419bc4150e3439f214beb1979"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMachineLearning",
            url: "https://spm-dingyshe.s3.us-west-2.amazonaws.com/AmazonChimeSDKMachineLearning-0.2.0.zip",
            checksum: "4a542758b6c7f606d9a934ccd87c752e90c74c235f4a978447cce1ff677ec657"
        )
    ]
)
