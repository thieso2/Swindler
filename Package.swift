// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Swindler",
    products: [
      .library(name: "Swindler", targets: ["Swindler"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "4.4.0"),
        .package(url: "https://github.com/thieso2/AXSwift.git", from: "0.2.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Swindler",
            dependencies: ["PromiseKit", "AXSwift"],
            path: "Sources",
	    exclude: ["FakeAXSwift.swift", "FakeSwindler.swift"]
        )
    ]
)
