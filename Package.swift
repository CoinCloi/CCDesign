// swift-tools-version: 5.9

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "CCDesign",
    platforms: [
        .iOS("16.0"), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "CCDesign",
            targets: ["CCDesign"]
        ),
        .iOSApplication(
            name: "Demo",
            targets: ["AppModule"],
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .pencil),
            accentColor: .presetColor(.yellow),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .target(
            name: "CCDesign"
        ),
        .executableTarget(
            name: "AppModule",
            dependencies: ["CCDesign"],
            path: "Demo",
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
