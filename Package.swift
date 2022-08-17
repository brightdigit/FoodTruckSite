// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FoodTruckSite",
  platforms: [.macOS(.v12)],
  dependencies: [
    .package(url: "https://github.com/johnsundell/publish.git", from: "0.9.0")
  ],
  targets: [
    .executableTarget(
      name: "foodtrucksite",
      dependencies: [
        .product(name: "Publish", package: "publish")
      ])
  ]
)
