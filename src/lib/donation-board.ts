interface Donor {
    name: string;
    amount: number;
    date: string;
    message?: string;
    avatar?: string;
}

export const donors: Donor[] = [
    // {
    //     name: "Alex_MC",
    //     amount: 50,
    //     date: "2/10/2025",
    //     message: "Keep up the amazing work!",
    //     avatar: "/image/donors/alex.png"
    // },
    // {
    //     name: "CraftMaster99",
    //     amount: 25,
    //     date: "2/5/2025",
    //     message: "Love the new packs!"
    // },
    // {
    //     name: "BuilderPro",
    //     amount: 100,
    //     date: "1/28/2025",
    //     message: "Supporting the future updates",
    //     avatar: "/image/donors/builder.png"
    // },
    // {
    //     name: "PixelArtist",
    //     amount: 30,
    //     date: "1/15/2025"
    // }
];

// Helper function to get total donations
export function getTotalDonations(): number {
    return donors.reduce((total, donor) => total + donor.amount, 0);
}

// Helper function to get top donors
export function getTopDonors(limit: number = 3): Donor[] {
    return [...donors]
        .sort((a, b) => b.amount - a.amount)
        .slice(0, limit);
}
