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
            url: "https://github.com/Moozart/testogethr-sdk-ios-spm/releases/download/v0.1.5/TestogethrSdk.xcframework.zip",
            checksum: "25aeb308bb1c2e8401843c3d5980e29c46dd8b751e650caaafff5b28362a1a44"
        )
    ]
)
