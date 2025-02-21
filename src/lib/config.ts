export const siteConfig = {
    name: "MX6 Studio",
    description: "Your creative asset solution for game development",
    links: {
        twitter: "https://x.com/MX600000",
        patreon: "https://www.patreon.com/c/MX6",
        discord: "https://discord.gg/Mt4F5JUm"
    },
    socials: {
        twitter: {
            name: "X/Twitter",
            icon: "/image/XLogo.png"
        },
        patreon: {
            name: "Patreon",
            icon: "/image/patreon.logo.png"
        },
        discord: {
            name: "Discord",
            icon: "/image/dislogo.png"
        },
        github: {
            name: "GitHub",
            icon: "/image/github.logo.png"
        }
    },
    branding: {
        colors: {
            primary: "#D247BF",
            secondary: "#7C3AED"
        },
        logo: {
            default: "/logo.svg",
            width: "68.5px",
            height: "65.5px"
        }
    },
    metadata: {
        keywords: ["game assets", "3D models", "game development", "MX6", "assets", "game design", "3D art"],
        author: "MX6 Studio",
        openGraph: {
            image: "/og-image.png",
            type: "website",
            siteName: "MX6 Studio",
            locale: "en_US"
        },
        twitter: {
            card: "summary_large_image",
            site: "@MX600000",
            creator: "@MX600000"
        },
        verification: {
            google: "your-google-verification-code",
            bing: "your-bing-verification-code"
        }
    },
    team: {
        members: [
            {
                name: "yunomeson",
                role: "3D modeling, Web Design, Social Media manager",
                image: "/image/team/owner.png",
                socials: {}
            },
            {
                name: "Crypto papi",
                role: "Co-Owner",
                image: "/image/team/profile-picture3.png",
                socials: {
                    twitter: "https://x.com/Crypto_papi007"
                }
            },
            {
                name: "ShaikhAmaan",
                role: "Lead Artist, Concept Designer",
                image: "/image/team/profile-picture2.png",
                socials: {
                    twitter: "https://x.com/Tamakohura"
                }
            },
            {
                name: "Memet Zx",
                role: "Developer, Contributor",
                image: "https://github.com/zxce3.png",
                socials: {
                    github: "https://github.com/zxce3"
                }
            }
        ]
    },
    partners: [
        {
            name: "Meta Loot",
            description: "Bridge Between Gaming And Reality",
            url: "https://www.metaloot.app/",
            logo:"/image/MetaLoot.png",
            logoSize: { width: "68.5px", height: "68.5px" }
        },
        {
            name: "Han",
            description: "Creative video game studio of digital experiences",
            url: "https://han.emirhangungormez.com/",
            logo:"/image/Han.png",
            logoSize: { width: "188.5px", height: "68.5px" }
        },
        {
            name: "Chaotic MC",
            description: "New minecraft server with a 24/7 online player count in its alpha stages",
            url: "https://discord.gg/yDQcs8xu",
            logo:"/image/ChaoticMC.gif",
            logoSize: { width: "68.5px", height: "68.5px" }
        },
        {
            name: "Nondin Studios",
            description: "Game studio based in florida",
            url: "https://bsky.app/profile/nodninstudios.bsky.social",
            logo:"/image/Nodnin.png",
            logoSize: { width: "68.5px", height: "68.5px" }
        }
    ],
} as const;

// Type helpers
export type SiteConfig = typeof siteConfig;
