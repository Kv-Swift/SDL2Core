
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
    	    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.3/libSDL2_mixer.zip", checksum: "0c6a3e7e0afe85e1b971481e72d5b39668ec5c27047f2d0dc7f9c2c2feb2e883"),
    	//        .binaryTarget(name: "libSDL2_ttf", path: "xcframework/libSDL2_ttf.zip"),
    	    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.3/libSDL2_ttf.zip", checksum: "7d0e7440fad5c44f938e0a9576eb36ec4401b7bb0d67d9987298276e4a8fc82c"),
    	//        .binaryTarget(name: "libSDL2_image", path: "xcframework/libSDL2_image.zip"),
    	    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.3/libSDL2_image.zip", checksum: "131f4e413c3b504eda69c2abbf0a6e97ec6f7142dc97b0b38a4080525e64a0e6"),
    	//        .binaryTarget(name: "libSDL2", path: "xcframework/libSDL2.zip"),
    	    	.binaryTarget(name: "libSDL2", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.3/libSDL2.zip", checksum: "5cfc9e4f64c749aaeded4247028f8eea90ba1782309bf777bedcb323ec748d78"),
    ]


)
