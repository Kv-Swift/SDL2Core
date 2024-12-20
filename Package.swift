// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SDL2Core", targets: ["SDL2Core"])
    ],
    dependencies: [
        .package(url: "https://github.com/KivySwiftLink/ImageCore", from: "311.0.8"),
        .package(url: "https://github.com/KivySwiftLink/PythonSwiftLink", .upToNextMajor(from: "311.1.0")),
        .package(url: "https://github.com/KivySwiftLink/PythonCore", .upToNextMajor(from: "311.0.0"))
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
        		.linkedLibrary("libc++")
        	]
        ),
        .binaryTarget(
            name: "libSDL2",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.8/libSDL2.zip",
            checksum: "f12962307262ef56725f04a8cfda04378ef9c84e231f8095bc17bbe026d53817"
        ),
        .binaryTarget(
            name: "libSDL2_image",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.8/libSDL2_image.zip",
            checksum: "8caab1a5c4a26cdedcad049903284778ec8969a3567efed55c432a1ebf788540"
        ),
        .binaryTarget(
            name: "libSDL2_mixer",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.8/libSDL2_mixer.zip",
            checksum: "9cfdb478e7a9ef43e506338f880d740d6fbcc4340f599eac9f5405196ef003f9"
        ),
        .binaryTarget(
            name: "libSDL2_ttf",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.8/libSDL2_ttf.zip",
            checksum: "453d911501ea87d7d046372581c3006416bd9ac5a3197520a29923cb97082d43"
        )
    ]
)

