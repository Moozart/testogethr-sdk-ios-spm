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
            url: "https://github.com/Moozart/testogethr-sdk-ios-spm/releases/download/v0.1.4/TestogethrSdk.xcframework.zip",
            checksum: "beb096e4fe07735282c7fd0684a0b920d9a3380160c2029582ecf60d887951c4"
        )
    ]
)
