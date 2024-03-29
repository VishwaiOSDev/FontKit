// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FontKit",
    platforms: [.iOS(.v13), .macOS(.v10_15), .watchOS(.v4), .tvOS(.v13)],
    products: [
        .library(name: "FontKit", targets: ["FontKit"]),
        .library(name: "FontInter", targets: ["FontInter"]),
        .library(name: "FontLato", targets: ["FontLato"]),
        .library(name: "FontRoboto", targets: ["FontRoboto"]),
        .library(name: "FontOpenSans", targets: ["FontOpenSans"]),
        .library(name: "FontPoppins", targets: ["FontPoppins"]),
        .library(name: "FontRaleway", targets: ["FontRaleway"]),
        .library(name: "FontUbuntu", targets: ["FontUbuntu"]),
        .library(name: "FontRubik", targets: ["FontRubik"]),
        .library(name: "FontMenlo", targets: ["FontMenlo"])
    ],
    dependencies: [],
    targets: [
        .target(name: "FontKit", dependencies: [], path: "Sources/FontKit"),
        .target(name: "FontInter", dependencies: ["FontKit"], path: "Sources/FontInter", resources: [.process("Fonts")]),
        .target(name: "FontLato", dependencies: ["FontKit"], path: "Sources/FontLato", resources: [.process("Fonts")]),
        .target(name: "FontRoboto", dependencies: ["FontKit"], path: "Sources/FontRoboto", resources: [.process("Fonts")]),
        .target(name: "FontOpenSans", dependencies: ["FontKit"], path: "Sources/FontOpenSans", resources: [.process("Fonts")]),
        .target(name: "FontPoppins", dependencies: ["FontKit"], path: "Sources/FontPoppins", resources: [.process("Fonts")]),
        .target(name: "FontRaleway", dependencies: ["FontKit"], path: "Sources/FontRaleway", resources: [.process("Fonts")]),
        .target(name: "FontUbuntu", dependencies: ["FontKit"], path: "Sources/FontUbuntu", resources: [.process("Fonts")]),
        .target(name: "FontRubik", dependencies: ["FontKit"], path: "Sources/FontRubik", resources: [.process("Fonts")]),
        .target(name: "FontMenlo", dependencies: ["FontKit"], path: "Sources/FontMenlo", resources: [.process("Fonts")])
    ]
)
