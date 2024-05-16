// swift-tools-version:5.6

import PackageDescription

let package = Package(
	name: "kGCDWebServer",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
	],
	products: [
		.library(
			name: "kGCDWebServer",
			targets: ["GCDWebServer"]),
	],
	dependencies: [
	],
	targets: [
		.target(
			name: "GCDWebServer",
			dependencies: [],
			path: ".",
			exclude: ["README.md"],
			sources: ["Core", "Requests", "Responses", "private"],
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ],
			publicHeadersPath: "include",
			cxxSettings: [
				.headerSearchPath("./private")
			]
		)
	]
)
