// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SDL2Core", targets: ["SDL2Core", "libSDL2"])
    ],
    dependencies: [
        .package(url: "https://github.com/kv-swift/ImageCore", from: "311.0.14"),
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
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.0.14/libSDL2.zip",
            checksum: "8c6d3d6f34f94f4ba515d8f21076172fe35febcab3e50f2869b1e75220bf2857"
        ),
        .binaryTarget(
            name: "libSDL2_image",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.0.14/libSDL2_image.zip",
            checksum: "526936430347e49a4a8f70b6c101f85b2602f8e4e43f3c8190dcff291f8f6ab0"
        ),
        .binaryTarget(
            name: "libSDL2_mixer",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.0.14/libSDL2_mixer.zip",
            checksum: "f9ed0021327580d593f9891d0dff3c17c33fe21bdbb0a97438c1f946f3d86238"
        ),
        .binaryTarget(
            name: "libSDL2_ttf",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.0.14/libSDL2_ttf.zip",
            checksum: "39a7833a869ee5a72b9bb30b32631e22dcfeba1065eb6d2148ea15994d22e8ce"
        )
    ]
)

