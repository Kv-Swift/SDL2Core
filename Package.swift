// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SDL2Core", targets: ["SDL2Core"])
    ],
    dependencies: [
        .package(url: "https://github.com/KivySwiftLink/ImageCore", from: "311.0.9"),
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
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.9/libSDL2.zip",
            checksum: "dae379802aa8fb42736764bf26f4fb0da17559c4aef098c63aec89b9e629bf1f"
        ),
        .binaryTarget(
            name: "libSDL2_image",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.9/libSDL2_image.zip",
            checksum: "f7ff4a317c7177a9704dd069ab5423d4a1d7017ae78a0c626b12e2cf29c69f09"
        ),
        .binaryTarget(
            name: "libSDL2_mixer",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.9/libSDL2_mixer.zip",
            checksum: "0a809ee5a0bd587d1dde453bb084e654904528b37251fc0270d4273ea4e91e84"
        ),
        .binaryTarget(
            name: "libSDL2_ttf",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.9/libSDL2_ttf.zip",
            checksum: "bdfca267c8ec2731ae005241cfc9971d85de745e796210a375c46756c636cdbb"
        )
    ]
)

