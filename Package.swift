// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VK-iOS-SDK",
    defaultLocalization: "ru",
    products: [
        .library(
            name: "VK-iOS-SDK",
            targets: ["VK-iOS-SDK"]
        )
    ],
    targets: [
        .target(
            name: "VK-iOS-SDK",
            path: "library",
            resources: [
                .copy("VkResources"),
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("DynamicFramework"),
                .headerSearchPath("Source"),
                .headerSearchPath("Source/API"),
                .headerSearchPath("Source/API/methods"),
                .headerSearchPath("Source/API/models"),
                .headerSearchPath("Source/API/upload"),
                .headerSearchPath("Source/Core"),
                .headerSearchPath("Source/Image"),
                .headerSearchPath("Source/Utils"),
                .headerSearchPath("Source/Views")
            ]
        )
    ]
)
