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
            checksum: "5cde62d2169ff6d957db666c3a28c2f75fff7539ac082a2c5bdf93e92f9b625a"
        )
    ]
)
