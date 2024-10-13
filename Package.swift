
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
    	    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.1/libSDL2_mixer.zip", checksum: "75641fd65479caaaaba0910c61dff7385267c3d75993042edddf75ddd33168b2"),
    	//        .binaryTarget(name: "libSDL2_ttf", path: "xcframework/libSDL2_ttf.zip"),
    	    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.1/libSDL2_ttf.zip", checksum: "5cea5a929006bd4c5cbf4eff466af44c8f29acbf908ff2b3a5a711b262663e25"),
    	//        .binaryTarget(name: "libSDL2_image", path: "xcframework/libSDL2_image.zip"),
    	    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.1/libSDL2_image.zip", checksum: "ccd51f984bfa29121883d1465290ab8ed8ae414eb9019f314ed4b43506754e5e"),
    	//        .binaryTarget(name: "libSDL2", path: "xcframework/libSDL2.zip"),
    	    	.binaryTarget(name: "libSDL2", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.1/libSDL2.zip", checksum: "579dce30413b911ac311d9175f8be063b0444982df2e8cdb7babb278e5a4d6fa"),
    ]


)
