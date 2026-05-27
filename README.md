# Testogethr iOS SDK (Swift Package)

[![GitHub stars](https://img.shields.io/github/stars/Moozart/testogethr-sdk-ios-spm?style=social)](https://github.com/Moozart/testogethr-sdk-ios-spm/stargazers)
[![Latest release](https://img.shields.io/github/v/release/Moozart/testogethr-sdk-ios-spm?display_name=tag&sort=semver)](https://github.com/Moozart/testogethr-sdk-ios-spm/releases/latest)

Public Swift Package Manager repository for Testogethr iOS SDK binary distribution.

## What Testogethr Does

Testogethr helps mobile teams validate campaign flows with real users and measurable milestones.

With the SDK, you can:

- Start and bind test sessions from deep links
- Register declared events for milestone tracking
- Track campaign/test events consistently across app flows
- Verify completion data in a structured way during closed tests

## Integrate Faster with AI

Use the official docs AI-assisted quick start:

- AI-assisted intro and setup: <https://docs.testogethr.com/docs/intro>
- Full integration guide (deep links, schema, tracking): <https://docs.testogethr.com/docs/usage>

You can copy the AI prompt from docs and generate project-specific integration steps in minutes.

## In-App Preview

<p align="center">
  <img src="assets/screenshots/step-1.jpg" alt="Testogethr app step 1" width="240" />
  <img src="assets/screenshots/step-3.jpg" alt="Testogethr app step 3" width="240" />
  <img src="assets/screenshots/step-5.jpg" alt="Testogethr app step 5" width="240" />
</p>

## Repository Scope

This repository is for:

- Swift package manifest (`Package.swift`)
- Binary XCFramework release asset hosting
- Public iOS version tags and release notes

This repository does **not** include Testogethr SDK source code. SDK source remains private.

## Quick Links

- Latest iOS release: <https://github.com/Moozart/testogethr-sdk-ios-spm/releases/latest>
- Android showcase repo: <https://github.com/Moozart/testogethr-sdk-android>
- Android+iOS integration guides: <https://github.com/Moozart/testogethr-sdk-android/tree/main/docs>
- Docs homepage: <https://docs.testogethr.com>
- AI-assisted quick start: <https://docs.testogethr.com/docs/intro>

## SDK Access Token (Required)

You must generate the SDK access token from the **Testogethr mobile app**:

1. Open Testogethr app
2. Go to **Profile**
3. Open **API Key Manager**
4. Generate and copy your SDK token

> Critical: SDK initialization will fail without a valid token from **Profile -> API Key Manager**.

## Download Testogethr App

- Android (Google Play): <https://play.google.com/store/apps/details?id=com.testogethr.app>
- iOS (App Store): <https://apps.apple.com/>

## Install with Swift Package Manager

### Option A: Add package in Xcode

1. In Xcode, open **File -> Add Package Dependencies...**
2. Enter:

`https://github.com/Moozart/testogethr-sdk-ios-spm`

3. Select your version rule (recommended: **Up to Next Major**)
4. Add product: `TestogethrSdk`

### Option B: Add in `Package.swift`

```swift
.package(url: "https://github.com/Moozart/testogethr-sdk-ios-spm", from: "<version>")
```

Replace `<version>` with the latest stable tag shown in the **Latest release** badge above.

Then link product:

```swift
.product(name: "TestogethrSdk", package: "testogethr-sdk-ios-spm")
```

## iOS Integration Quick Start

### 1) Initialize SDK

Initialize as early as possible in your app lifecycle.

```swift
import TestogethrSdk

TestogethrSdkCompanion.shared.initialize(
    sdkAccessToken: "YOUR_SDK_ACCESS_TOKEN",
    config: TestogethrConfig(),
    debugLogger: { level, tag, message, throwable in
        if let throwable {
            print("[\(level)] \(tag): \(message) \(throwable)")
        } else {
            print("[\(level)] \(tag): \(message)")
        }
    }
)
```

### 2) Start session from deep link

When Testogethr opens your app, read `sessionToken` and call `startSession`.

```swift
.onOpenURL { url in
    if let components = URLComponents(url: url, resolvingAgainstBaseURL: false),
       let token = components.queryItems?.first(where: { $0.name == "sessionToken" })?.value,
       !token.isEmpty {
        TestogethrSdkCompanion.shared.get().startSession(sessionToken: token)
    }
}
```

### 3) Register schema

```swift
let bossEvent = DeclaredEvent(
    name: "boss_defeated",
    description: "Fired when the final alien boss is beaten"
)

TestogethrSdkCompanion.shared.get().registerSchema(
    isDiscoveryMode: true,
    events: [bossEvent]
)
```

### 4) Track events

```swift
TestogethrSdkCompanion.shared.get().trackEvent(event: bossEvent)
```

## Release Packaging Notes

For each new iOS SDK release:

1. Upload `TestogethrSdk.xcframework.zip` to GitHub Release assets
2. Compute checksum with `swift package compute-checksum`
3. Update `Package.swift` URL + checksum
4. Create tag `vMAJOR.MINOR.PATCH`
5. Publish release notes

## Support

- Integration questions: <https://github.com/Moozart/testogethr-sdk-android/issues>
- iOS package/release issues: <https://github.com/Moozart/testogethr-sdk-ios-spm/issues>
