// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SDL2Core", targets: ["SDL2Core", "libSDL2"])
    ],
    dependencies: [
        .package(url: "https://github.com/kv-swift/ImageCore", from: "311.1.14"),
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
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.14/libSDL2.zip",
            checksum: "c158d13b500de1b414a8ad1242613b578ee0913972baed315afa0c064bcb5b48"
        ),
        .binaryTarget(
            name: "libSDL2_image",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.14/libSDL2_image.zip",
            checksum: "222bea07b56b05fedf405594258a8728674faa7c5648b7441c8bbec72608690a"
        ),
        .binaryTarget(
            name: "libSDL2_mixer",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.14/libSDL2_mixer.zip",
            checksum: "4622b71bd87febd4f491e8ec31127df5c4e27092dcc07d37e7eec01fa4c0baf3"
        ),
        .binaryTarget(
            name: "libSDL2_ttf",
            url: "https://github.com/kv-swift/SDL2Core/releases/download/311.1.14/libSDL2_ttf.zip",
            checksum: "96ca84814a2c831b96ca108824ab835944324379d78bc62fe17ab03224cb0764"
        )
    ]
)

