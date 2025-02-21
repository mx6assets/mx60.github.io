import type { ComponentType, SvelteComponent } from 'svelte';
import PatreonIcon from '$lib/icons/PatreonIcon.svelte';
import LinkedInIcon from '$lib/icons/LinkedInIcon.svelte';
// You'll need to create these additional icon components
import TwitterIcon from '$lib/icons/XIcon.svelte';
import DiscordIcon from '$lib/icons/DiscordIcon.svelte';


export const content = {
    packs3d: [
        {
            name: "Beach Pack",
            year: "2024",
            url: "/collection/Beach",
            icon: "/image/BeachIcon.png",
            models: [
                {
                    name: "Shovel",
                    vertices: 165,
                    size: "22 KB",
                    file: "/fbx/shovel.fbx"
                },
                {
                    name: "Barrel",
                    vertices: 905,
                    size: "50 KB",
                    file: "/fbx/barrel.fbx"
                },
                {
                    name: "Man",
                    vertices: 422,
                    size: "111 KB",
                    file: "/fbx/man_unrigged.fbx"
                },
                {
                    name: "Rocks",
                    vertices: 260,
                    size: "27 KB",
                    file: "/fbx/rocks.fbx"
                },
                {
                    name: "Palm Tree",
                    vertices: 634,
                    size: "43 KB",
                    file: "/fbx/palmtree.fbx"
                }
            ]
        },
        {
            name: "Medieval Pack",
            year: "2024",
            url: "/collection/Medieval",
            icon: "/image/MedievalIcon.png",
            models: [
                {
                    name: "Sword",
                    vertices: 278,
                    size: "28 KB",
                    file: "/fbx/sword.fbx"
                },
                {
                    name: "Anvil",
                    vertices: 164,
                    size: "22 KB",
                    file: "/fbx/anvil.fbx"
                },
                {
                    name: "Shield",
                    vertices: 186,
                    size: "25 KB",
                    file: "/fbx/shield.fbx"
                },
                {
                    name: "Hammer",
                    vertices: 332,
                    size: "28 KB",
                    file: "/fbx/hammer.fbx"
                },
                {
                    name: "Flag Post",
                    vertices: 272,
                    size: "26 KB",
                    file: "/fbx/flagpost.fbx"
                }
            ]
        },
        {
            name: "City Pack",
            year: "2024",
            url: "/collection/City",
            icon: "/image/CityIcon.png",
            models: [
                {
                    name: "Stop Sign",
                    vertices: 8543,
                    size: "237 KB",
                    file: "/fbx/stopsign.fbx"
                },
                {
                    name: "Trash Bag",
                    vertices: 122,
                    size: "20 KB",
                    file: "/fbx/trashbag.fbx"
                },
                {
                    name: "Water",
                    vertices: 468,
                    size: "33 KB",
                    file: "/fbx/water.fbx"
                },
                {
                    name: "Greg",
                    vertices: 422,
                    size: "133 KB",
                    file: "/fbx/greg.fbx"
                },
                {
                    name: "Tree",
                    vertices: 130,
                    size: "21 KB",
                    file: "/fbx/tree.fbx"
                }
            ]
        },
        {
            name: "Christmas Eve Pack",
            year: "2024",
            url: "/collection/ChristmasEve",
            icon: "/image/ChristmasEveIcon.png",
            models: [
                {
                    name: "Snow Man",
                    vertices: 2917,
                    size: "161 KB",
                    file: "/fbx/snowman.fbx"
                },
                {
                    name: "Stocking",
                    vertices: 4704,
                    size: "224 KB",
                    file: "/fbx/stocking.fbx"
                },
                {
                    name: "Ornament",
                    vertices: 182,
                    size: "24 KB",
                    file: "/fbx/ornament.fbx"
                },
                {
                    name: "Snow Ball",
                    vertices: 242,
                    size: "27 KB",
                    file: "/fbx/snowball.fbx"
                },
                {
                    name: "Candy Cane",
                    vertices: 1010,
                    size: "57 KB",
                    file: "/fbx/candycane.fbx"
                }
            ]
        },
        {
            name: "Furniture Pack",
            year: "2024",
            url: "/collection/Furniture",
            icon: "/image/FurnitureIcon.png",
            models: [
                {
                    name: "Chair",
                    vertices: 1114,
                    size: "67 KB",
                    file: "/fbx/chair.fbx"
                },
                {
                    name: "Sofa Chair",
                    vertices: 333,
                    size: "30 KB",
                    file: "/fbx/sofachair.fbx"
                },
                {
                    name: "Cactus",
                    vertices: 401,
                    size: "34 KB",
                    file: "/fbx/cactus.fbx"
                },
                {
                    name: "Stool",
                    vertices: 610,
                    size: "42 KB",
                    file: "/fbx/stool.fbx"
                },
                {
                    name: "Table",
                    vertices: 770,
                    size: "42 KB",
                    file: "/fbx/table.fbx"
                }
            ]
        },
        {
            name: "New Years Pack",
            year: "2024",
            url: "/collection/NewYears",
            icon: "/image/NewYearsIcon.png",
            models: [
                {
                    name: "Firework",
                    vertices: 458,
                    size: "34 KB",
                    file: "/fbx/firework.fbx"
                },
                {
                    name: "Disco Ball",
                    vertices: 724,
                    size: "46 KB",
                    file: "/fbx/discoball.fbx"
                },
                {
                    name: "Champagne",
                    vertices: 305,
                    size: "29 KB",
                    file: "/fbx/champange.fbx"
                },
                {
                    name: "Balloons",
                    vertices: 751,
                    size: "55 KB",
                    file: "/fbx/balloons.fbx"
                },
                {
                    name: "Glasses",
                    vertices: 368,
                    size: "28 KB",
                    file: "/fbx/glasses.fbx"
                }
            ]
        },
        {
            name: "Japanese Pack",
            year: "2025",
            url: "/collection/Japanese",
            icon: "/image/JapaneseIcon.png",
            models: [
                {
                    name: "Katana",
                    vertices: 647,
                    size: "44 KB",
                    file: "/fbx/katana.fbx"
                },
                {
                    name: "Rice Bowl",
                    vertices: 517,
                    size: "41 KB",
                    file: "/fbx/ricebowl.fbx"
                },
                {
                    name: "Shuriken",
                    vertices: 61,
                    size: "20 KB",
                    file: "/fbx/shuriken.fbx"
                },
                {
                    name: "Chopsticks",
                    vertices: 92,
                    size: "19 KB",
                    file: "/fbx/chopsticks.fbx"
                },
                {
                    name: "Shrine",
                    vertices: 237,
                    size: "25 KB",
                    file: "/fbx/shrine.fbx"
                }
            ]
        },
        {
            name: "Camping Pack",
            year: "2025",
            url: "/collection/Camping",
            icon: "/image/CampingIcon.png",
            models: [
                {
                    name: "Tent",
                    vertices: 674,
                    size: "46 KB",
                    file: "/fbx/tent.fbx"
                },
                {
                    name: "Bush",
                    vertices: 242,
                    size: "28 KB",
                    file: "/fbx/bush.fbx"
                },
                {
                    name: "Hiking stick",
                    vertices: 155,
                    size: "22 KB",
                    file: "/fbx/hikingstick.fbx"
                },
                {
                    name: "Hachet",
                    vertices: 340,
                    size: "30 KB",
                    file: "/fbx/hachet.fbx"
                },
                {
                    name: "Stump",
                    vertices: 1466,
                    size: "73 KB",
                    file: "/fbx/stump.fbx"
                }
            ]
        }
    ],
    socials: [
        {
            name: "Twitter",
            url: "https://x.com/MX600000",
            icon: TwitterIcon
        },
        {
            name: "Patreon",
            url: "https://patreon.com",
            icon: PatreonIcon
        },
        {
            name: "Discord",
            url: "https://discord.gg/Mt4F5JUm",
            icon: DiscordIcon
        }
    ],
    version: "v5.75"
}

export function getPackBySlug(slug: string) {
    return content.packs3d.find(pack => {
        const packSlug = pack.url.split('/').pop()?.toLowerCase();
        return packSlug === slug.toLowerCase();
    });
}

export type Pack3D = typeof content.packs3d[number];
