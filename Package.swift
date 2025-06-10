// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SDL2Core", targets: ["SDL2Core", "libSDL2"])
    ],
    dependencies: [
        .package(url: "https://github.com/kv-swift/ImageCore", from: "311.1.19"),
        .package(url: "https://github.com/kv-swift/PySwiftKit", .upToNextMajor(from: "311.0.0")),
        .package(url: "https://github.com/kv-swift/PythonCore", .upToNextMajor(from: "311.0.0"))
    ],
    targets: [
        .target(
            name: "SDL2Core",
            dependencies: [
        		.product(name: "libpng", package: "ImageCore"),
        		.target(name: "libSDL2"),
        		.target(name: "libSDL2_image"),
        		.target(name: "libSDL2_mixer"),
        		.target(name: "libSDL2_ttf")
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
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.19/libSDL2.zip",
            checksum: "61d838c44507df70e9731758a9b18dba63d511612a496996293ca4f7fa337068"
        ),
        .binaryTarget(
            name: "libSDL2_image",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.19/libSDL2_image.zip",
            checksum: "02a286f310eced69066580a1e5eddaf313cc46bd1c9a04fcb0affb7a59d61233"
        ),
        .binaryTarget(
            name: "libSDL2_mixer",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.19/libSDL2_mixer.zip",
            checksum: "e1732d458c5cd8b9016d07eddde2a59e77d5c33f7f298fbfb0fa272d9933bdda"
        ),
        .binaryTarget(
            name: "libSDL2_ttf",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.19/libSDL2_ttf.zip",
            checksum: "59db635bc95c202a3b12fd22e915929ff710cf2d9c7f101905bb9ba3731a60f2"
        )
    ]
)

