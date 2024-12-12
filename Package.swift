
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
    	    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.4/libSDL2_mixer.zip", checksum: "9e1558c9bbe0c46962b7e4c9915e6a415b9c30b3c6023295064cccd4257df509"),
    	//        .binaryTarget(name: "libSDL2_ttf", path: "xcframework/libSDL2_ttf.zip"),
    	    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.4/libSDL2_ttf.zip", checksum: "12bc41b9837a385a81785bcb37df5524899c45bb0a5db9d94e119e5f94072dae"),
    	//        .binaryTarget(name: "libSDL2_image", path: "xcframework/libSDL2_image.zip"),
    	    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.4/libSDL2_image.zip", checksum: "9f97d808ce2e54d97e1f8a1b31fde66ce6ec5103b25ee38a2b0476b7f766cb76"),
    	//        .binaryTarget(name: "libSDL2", path: "xcframework/libSDL2.zip"),
    	    	.binaryTarget(name: "libSDL2", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.4/libSDL2.zip", checksum: "ddd8b96a2ccc59f910ad9540f623e4083291337100ca0e0fb46380b71a489c80"),
    ]


)
