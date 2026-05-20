// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TestogethrSdk",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "TestogethrSdk", targets: ["TestogethrSdk"])
    ],
    targets: [
        .binaryTarget(
            name: "TestogethrSdk",
            url: "https://github.com/Moozart/testogethr-sdk-ios-spm/releases/download/v0.1.0/TestogethrSdk.xcframework.zip",
            checksum: "da2ff8771fd8bb16a253965da6b67833076b7bb4b83c662660e2f5d3de89b801"
        )
    ]
)
