# Testogethr iOS SDK (Swift Package)

Public SwiftPM distribution repository for Testogethr iOS SDK binary releases.

This repository does not contain SDK source code. It only contains Swift Package metadata and release assets.

## Add package in Xcode

Use this URL:

`https://github.com/Moozart/testogethr-sdk-ios-spm`

Then choose the version you want (for example `0.1.0`).

## How releases work

Each SDK version includes:

- `Package.swift` update
- Git tag (for example `v0.1.0`)
- Release asset: `TestogethrSdk.xcframework.zip`

The package points to the release asset URL and checksum.

Note: this repository can contain placeholder values before the first public binary release is published.

## Support

For integration docs, see:

- https://github.com/Moozart/testogethr-sdk-docs
