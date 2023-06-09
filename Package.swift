// swift-tools-version: 5.8
// swift-tools-version: 5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/// 패키지 환경설정
/// - Author: 김민규
/// - Date: 2023/05/22
let package = Package(
    /// 패키지 명
    name: "iOS-TripBook-Component-Package",
    /// 패키지 지원 플랫폼 명세
    platforms: [
        .iOS(.v15),
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TBComponent",
            targets: ["TBComponent"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TBComponent",
            dependencies: ["TBUtil"]
        ),
        .target(
            name: "TBUtil",
            resources: [
                .process("Resource/Image"),
                .process("Resource/Font")
            ]
        ),
    ]
)
