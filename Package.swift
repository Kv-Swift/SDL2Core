// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SDL2Core",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SDL2Core", targets: ["SDL2Core"])
    ],
    dependencies: [
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
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.7/libSDL2.zip",
            checksum: "08c944572b9f8dab16e7a2490aed2c23493cee5dd8c9e1cfcf24e916e0c8a793"
        ),
        .binaryTarget(
            name: "libSDL2_image",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.7/libSDL2_image.zip",
            checksum: "375509acbb320b752b9d99d3e673461d2477b52845dbe2ef32996776bff15a89"
        ),
        .binaryTarget(
            name: "libSDL2_mixer",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.7/libSDL2_mixer.zip",
            checksum: "1851366e165b39a38aecf31908835a789f8104b12e562edfd995e1622514d2f0"
        ),
        .binaryTarget(
            name: "libSDL2_ttf",
            url: "https://github.com/kivyswiftlink/SDL2Core/releases/download/311.0.7/libSDL2_ttf.zip",
            checksum: "35ccce21edffc78807c7d63fcebaa2ecde2b62e4046babaf6cb02e4ba7718127"
        )
    ]
)

