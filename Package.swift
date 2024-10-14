
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
    	    	.binaryTarget(name: "libSDL2_mixer", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.0/libSDL2_mixer.zip", checksum: "d599ef2a06dc4079b20728ff14b37a1f6597a767899889eb5630499dda45aef3"),
    	//        .binaryTarget(name: "libSDL2_ttf", path: "xcframework/libSDL2_ttf.zip"),
    	    	.binaryTarget(name: "libSDL2_ttf", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.0/libSDL2_ttf.zip", checksum: "95f768965e01addcebbd8e87ee88c45fd2a801c1a6792fb462da08eb56a52a5a"),
    	//        .binaryTarget(name: "libSDL2_image", path: "xcframework/libSDL2_image.zip"),
    	    	.binaryTarget(name: "libSDL2_image", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.0/libSDL2_image.zip", checksum: "dc32414ec67e4c31a917e4829fc3b1c5158ccb25982a701e580c39afeb7d0a13"),
    	//        .binaryTarget(name: "libSDL2", path: "xcframework/libSDL2.zip"),
    	    	.binaryTarget(name: "libSDL2", url: "https://github.com/KivySwiftLink/SDL2Core/releases/download/311.0.0/libSDL2.zip", checksum: "2a9dfaf14f5f3c6b3fb6839c0595636832322c1a9a81e339d34e517dbe45b339"),
    ]


)
