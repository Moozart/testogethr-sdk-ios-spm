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
            // Replace URL and checksum on each release.
            url: "https://github.com/Moozart/testogethr-sdk-ios-spm/releases/download/v0.1.0/TestogethrSdk.xcframework.zip",
            checksum: "0000000000000000000000000000000000000000000000000000000000000000"
        )
    ]
)
