// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FontKit",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        .library(name: "FontKit", targets: ["FontKit"]),
        .library(name: "FontInter", targets: ["FontInter"]),
        .library(name: "FontLato", targets: ["FontLato"]),
        .library(name: "FontRoboto", targets: ["FontRoboto"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "FontKit", dependencies: [], path: "Sources/FontKit"),
        .target(name: "FontInter", dependencies: ["FontKit"], path: "Sources/FontInter", resources: [.process("Fonts")]),
        .target(name: "FontLato", dependencies: ["FontKit"], path: "Sources/FontLato", resources: [.process("Fonts")]),
        .target(name: "FontRoboto", dependencies: ["FontKit"], path: "Sources/FontRoboto", resources: [.process("Fonts")]),
        .testTarget(name: "FontKitTests", dependencies: ["FontKit"]),
    ]
)
