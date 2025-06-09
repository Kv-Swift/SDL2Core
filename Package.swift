// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SDL2Core", targets: ["SDL2Core", "libSDL2"])
    ],
    dependencies: [
        .package(url: "https://github.com/kv-swift/ImageCore", from: "311.1.15"),
        .package(url: "https://github.com/kv-swift/PySwiftKit", .upToNextMajor(from: "311.0.0")),
        .package(url: "https://github.com/kv-swift/PythonCore", .upToNextMajor(from: "311.0.0"))
    ],
    targets: [
        .target(
            name: "SDL2Core",
            dependencies: [
        		.product(name: "libpng", package: "ImageCore"),
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
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.15/libSDL2.zip",
            checksum: "6d25aef88c6de3e92529cda57d2c93cee60406343f2f7494fc699fb4091d142b"
        ),
        .binaryTarget(
            name: "libSDL2_image",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.15/libSDL2_image.zip",
            checksum: "391c150fc3a98af582a5a2c24afe39be7a11f1de5e97d78f688d92358d9cc7f2"
        ),
        .binaryTarget(
            name: "libSDL2_mixer",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.15/libSDL2_mixer.zip",
            checksum: "efe7714f6935e4c047b653400ac2687e7088c2dd6307315dbfa8ff6f667fd429"
        ),
        .binaryTarget(
            name: "libSDL2_ttf",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.15/libSDL2_ttf.zip",
            checksum: "d9a3c45d93d5943ef98f10510ef452486f0f68a2454b177abef23d445cf17c73"
        )
    ]
)

