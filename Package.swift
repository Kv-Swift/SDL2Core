
// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
    	.library(
        	name: "SDL2Core",
        	targets: [
        		"SDL2Core"
        	]
    	),
    ],
    dependencies: [
    	.package(url: "https://github.com/KivySwiftLink/ImageCore", .upToNextMajor(from: "311.0.0"))
        //.package(path: "../imagecore")
    ], targets: [
    	.target(
        	name: "SDL2Core",
        	dependencies: [
        		.product(name: "libpng", package: "ImageCore"),
        		"libSDL2_mixer",
        		"libSDL2_ttf",
        		"libSDL2_image",
        		"libSDL2",
        	],
            path: "Sources",
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
        		.linkedFramework("ImageIO"),
        		.linkedFramework("MobileCoreServices"),
        	]
    	),
    	//            .binaryTarget(name: "libSDL2_mixer", path: "xcframework/libSDL2_mixer.zip"),
    	    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.1/libSDL2_mixer.zip", checksum: "cd1b105c5ed52d1eddd86d98eaaefeb1284706a1cb4052a1d8169a5c6b619292"),
    	//        .binaryTarget(name: "libSDL2_ttf", path: "xcframework/libSDL2_ttf.zip"),
    	    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.1/libSDL2_ttf.zip", checksum: "d4cedca4a672b942a703a362635858b6d5b0f58ab45c9a9c44e23dd7b6f30029"),
    	//        .binaryTarget(name: "libSDL2_image", path: "xcframework/libSDL2_image.zip"),
    	    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.1/libSDL2_image.zip", checksum: "fef1fadaa1f8e7ee48d9e24440b54ee5a2a3732a17ca8f3818fd059c41810b09"),
    	//        .binaryTarget(name: "libSDL2", path: "xcframework/libSDL2.zip"),
    	    	.binaryTarget(name: "libSDL2", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.1/libSDL2.zip", checksum: "61121d3771ad34547a63ab7757eac3f610bc1261dcc9238026db29a2d5c840f0"),
    ]


)
