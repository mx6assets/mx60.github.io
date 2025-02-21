interface ReleaseNote {
    version: string;
    date: string;
    additions: string[];
    image?: string;  // Optional image URL
}

export const releaseNotes: ReleaseNote[] = [
    {
        version: "v8.75",
        date: "2/21/2025",
        additions: [
            "Added ads",
            "Major web redesign changes",
            "New domain",
            "Small bug fixes"
        ],
    },
    {
        version: "v5.75",
        date: "2/15/2025",
        additions: [
            "Camping Pack (5 assets)",
            "Discord server invite"
        ],
    },
    {
        version: "v5.45",
        date: "1/27/2025",
        image: "/image/Nodnin.png",
        additions: [
            "Nondin Studios partnership"
        ]
    },
    {
        version: "v5.35",
        date: "1/19/2025",
        image: "/image/ChaoticMC.gif",
        additions: [
            "Chaotic MC partnership"
        ]
    },
    {
        version: "v5.25",
        date: "1/9/2025",
        additions: [
            "Japanese Pack (5 assets)"
        ]
    },
    {
        version: "v4.9",
        date: "1/6/2025",
        image: "/image/Han.png",
        additions: [
            "Han Studio partnership",
            "New UI Icon for future socials"
        ]
    },
    {
        version: "v4.8",
        date: "12/27/2024",
        image: "/image/MetaLoot.png",
        additions: [
            "Partnership board",
            "MetaLoot partnership"
        ]
    },
    {
        version: "v4.55",
        date: "12/15/2024",
        additions: [
            "New Years Pack (5 assets)",
            "Web UI Icon redesign"
        ]
    },
    {
        version: "v4.2",
        date: "12/8/2024",
        additions: [
            "Web Redesign (Link Decorations, Icon's, new color scheme)"
        ]
    },
    {
        version: "v2.7",
        date: "11/28/2024",
        additions: [
            "Furniture Pack (5 assets)"
        ]
    },
    {
        version: "v2.4",
        date: "11/25/2024",
        additions: [
            "UI Category",
            "UI Icons Pack",
            "Developer credits"
        ]
    },
    {
        version: "v2.25",
        date: "11/19/2024",
        additions: [
            "Christmas Eve Pack (5 assets)"
        ]
    },
    {
        version: "v2.05",
        date: "11/17/2024",
        additions: [
            "City Expansion (4 assets)",
            "Donation Board"
        ]
    },
    {
        version: "v1.65",
        date: "11/15/2024",
        additions: [
            "City Pack (5 assets)"
        ]
    },
    {
        version: "v1.45",
        date: "11/14/2024",
        additions: [
            "New Interface Color Scheme",
            "Patreon Connection"
        ]
    },
    {
        version: "v1.2",
        date: "11/13/2024",
        additions: [
            "Medieval Pack (5 assets)"
        ]
    },
    {
        version: "v1",
        date: "11/10/2024",
        additions: [
            "Homepage",
            "Release Notes",
            "Beach Pack (5 Assets)"
        ]
    }
];
