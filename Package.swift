// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SDL2Core", targets: ["SDL2Core", "libSDL2"])
    ],
    dependencies: [
        .package(url: "https://github.com/kv-swift/ImageCore", from: "311.1.17"),
        .package(url: "https://github.com/kv-swift/PySwiftKit", .upToNextMajor(from: "311.0.0")),
        .package(url: "https://github.com/kv-swift/PythonCore", .upToNextMajor(from: "311.0.0"))
    ],
    targets: [
        .target(
            name: "SDL2Core",
            dependencies: [
        		.target(name: "libpng"),
        		"libSDL2",
        		"libSDL2_image",
        		"libSDL2_mixer",
        		"libSDL2_ttf"
        	],
            resources: [
        	],
            linkerSettings: [
        		.linkedFramework("OpenGLES"),
        		.linkedFramework("AudioToolbox"),
        		.linkedFramework("QuartzCore"),
        		.linkedFramework("CoreGraphics"),
        		.linkedFramework("CoreMotion"),
        		.linkedFramework("GameController"),
        		.linkedFramework("AVFoundation"),
        		.linkedFramework("Metal"),
        		.linkedFramework("UIKit"),
        		.linkedFramework("CoreHaptics"),
        		.linkedFramework("CoreGraphics"),
        		.linkedFramework("MobileCoreServices"),
        		.linkedFramework("ImageIO"),
        		.linkedLibrary("c++")
        	],
            plugins: []
        ),
        .binaryTarget(
            name: "libSDL2",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.17/libSDL2.zip",
            checksum: "327752963baf2440ed7872913acd2534d6f14afd06639908e02fc638b89db1ed"
        ),
        .binaryTarget(
            name: "libSDL2_image",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.17/libSDL2_image.zip",
            checksum: "cb657651fbe2d576fe813292eae5a9a4bc083f2266098c15e56b6b303489f63f"
        ),
        .binaryTarget(
            name: "libSDL2_mixer",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.17/libSDL2_mixer.zip",
            checksum: "d3e56f6fde43ac9acd5027681e3f1888aa4362b897bc0d170d2e2c20babcc0d0"
        ),
        .binaryTarget(
            name: "libSDL2_ttf",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.17/libSDL2_ttf.zip",
            checksum: "c7f008987ca0e07facc79e4bf722b83425ca8a8055395f602567b977418fd6d4"
        )
    ]
)

