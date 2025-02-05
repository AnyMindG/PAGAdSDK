// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// v1.4.0
let package = Package(
  name: "PAGAdSDK",
  defaultLocalization: "en",
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "PAGAdSDK",
      targets: ["PAGAdSDK"]
    ),
  ],
  targets: [
    .binaryTarget(
      name: "PAGAdSDKBinary",
      url: "https://github.com/AnyMindG/AllFrameworks/releases/download/10000.3.0/PAGAdSDK.zip", // Add actual URL
      checksum: "c6363d4f71824814089dd40be94448484e73d930ecb0e18e7586d03f9dcbda35" // Add actual checksum
    ),
    
    .target(
      name: "PAGAdSDK",
      dependencies: [],
      exclude: [
        "Resources/Info.plist" // Exclude specific file
      ],
      resources: [
        .process("Resources") // Process the Resources folder
      ],
      linkerSettings: [
          .linkedFramework("WebKit"),
          .linkedFramework("AdSupport"),
          .linkedFramework("AVFoundation"),
          .linkedFramework("CoreGraphics"),
          .linkedFramework("CoreMedia"),
          .linkedFramework("CoreTelephony"),
          .linkedFramework("StoreKit"),
          .linkedFramework("SystemConfiguration"),
          .linkedFramework("UIKit"),
          .linkedFramework("AudioToolbox"),
          .linkedFramework("CFNetwork"),
          .linkedFramework("MediaPlayer"),
          .linkedFramework("QuartzCore"),
          .linkedFramework("CoreAudioTypes"),
      ]
    ),
    .testTarget(
      name: "PAGAdSDKTests",
      dependencies: ["PAGAdSDK"]
    ),
  ]
)
