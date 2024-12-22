// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SDL2Core", targets: ["SDL2Core"])
    ],
    dependencies: [
        .package(url: "https://github.com/KivySwiftLink/ImageCore", from: "311.0.5"),
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
        	],
            plugins: []
        ),
        .binaryTarget(
            name: "libSDL2",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.5/libSDL2.zip",
            checksum: "aa994559610230f39c0308da99e8b0879694c2481133007c93302f396cfa0453"
        ),
        .binaryTarget(
            name: "libSDL2_image",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.5/libSDL2_image.zip",
            checksum: "b270354503f3f7dbd4bab5cbcebbd8cc527c934a5c202971b636b0ab0e896244"
        ),
        .binaryTarget(
            name: "libSDL2_mixer",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.5/libSDL2_mixer.zip",
            checksum: "e6103ca859d2b2bebbe699bf926dfde765dd1768b4e8266d1d4ad1d6b58a8bd9"
        ),
        .binaryTarget(
            name: "libSDL2_ttf",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.5/libSDL2_ttf.zip",
            checksum: "3000625d84385d52aca6c98547897a41ab1b0ffff88b282ab6ca2872f78723bd"
        )
    ]
)

