// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SDL2Core", targets: ["SDL2Core", "libSDL2"])
    ],
    dependencies: [
        .package(url: "https://github.com/KivySwiftLink/ImageCore", from: "311.0.16"),
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
        		.linkedLibrary("c++")
        	],
            plugins: []
        ),
        .binaryTarget(
            name: "libSDL2",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.16/libSDL2.zip",
            checksum: "5d776b0025c3ca97f5d88ef11145845d54282b701f2554cf54333116f1ae21cd"
        ),
        .binaryTarget(
            name: "libSDL2_image",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.16/libSDL2_image.zip",
            checksum: "379ee7b54e0f13ddf8ea8dcb3ce31f10b88e93d11769f94828d29ccca243b936"
        ),
        .binaryTarget(
            name: "libSDL2_mixer",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.16/libSDL2_mixer.zip",
            checksum: "7964ca2a907239893f3786b57be81e3569d91a09f6a102c73f3061fe65561846"
        ),
        .binaryTarget(
            name: "libSDL2_ttf",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.16/libSDL2_ttf.zip",
            checksum: "5b8ed86036f1872a3307bf5454c1e695e871d94c49aa6388b65f79216d9bc79b"
        )
    ]
)

