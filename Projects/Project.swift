import ProjectDescription

let project = Project(
    name: "Projects",
    options: .options(
        defaultKnownRegions: ["ko"],
        developmentRegion: "ko"
    ),
    targets: [
        .target(
            name: "SNurdy",
            destinations: .iOS,
            product: .app,
            bundleId: "org.snurdy.SNurdy",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UIUserInterfaceStyle": "Light",
                    "UISupportedInterfaceOrientations": [
                        "UIInterfaceOrientationPortrait",
                    ],
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                    "UIAppFonts": [
                        "GmarketSansBold.otf",
                        "GmarketSansMedium.otf",
                        "SCDream5.otf",
                        "SCDream6.otf",
                        "SCDream7.otf",
                    ],
                    "UIBackgroundModes": ["remote-notification"],
                ]
            ),
            sources: ["SNurdy/Sources/**"],
            resources: [
                "SNurdy/Resources/**",
                "SNurdy/Resources/**/*.xcdatamodeld",
            ],
            entitlements: "SNurdy/SNurdy.entitlements",
            dependencies: []
        ),
        .target(
            name: "SNurdyTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "org.snurdy.SNurdyTests",
            infoPlist: .default,
            sources: ["SNurdy/Tests/**"],
            resources: [],
            dependencies: [.target(name: "SNurdy")]
        ),
    ]
)
