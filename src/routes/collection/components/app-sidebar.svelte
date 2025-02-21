<script lang="ts" module>
    import { content } from "$lib/content";
    import AudioWaveform from "lucide-svelte/icons/audio-waveform";
    import Blocks from "lucide-svelte/icons/blocks";
    import Calendar from "lucide-svelte/icons/calendar";
    import Command from "lucide-svelte/icons/command";
    import House from "lucide-svelte/icons/house";
    import Inbox from "lucide-svelte/icons/inbox";
    import MessageCircleQuestion from "lucide-svelte/icons/message-circle-question";
    import Search from "lucide-svelte/icons/search";
    import Settings2 from "lucide-svelte/icons/settings-2";
    import Sparkles from "lucide-svelte/icons/sparkles";
    import Trash2 from "lucide-svelte/icons/trash-2";

    // Transform packs3d into favorites format
    const favorites = content.packs3d.map(pack => ({
        name: pack.name,
        url: pack.url,
        emoji: "🎨" // Default emoji for 3D packs
    }));

    // This is sample data.
    const data = {
        teams: [
            {
                name: "Acme Inc",
                logo: Command,
                plan: "Enterprise",
            },
            {
                name: "Acme Corp.",
                logo: AudioWaveform,
                plan: "Startup",
            },
            {
                name: "Evil Corp.",
                logo: Command,
                plan: "Free",
            },
        ],
        navMain: [
            {
                title: "Collection",
                url: "/collection",
                icon: House,
                isActive: true,
            },
            {
                title: "Release Notes",
                url: "/release-notes",
                icon: Sparkles,
                badge: "10",
            },
        ],
        navSecondary: [
            {
                title: "Calendar",
                url: "#",
                icon: Calendar,
            },
            {
                title: "Settings",
                url: "#",
                icon: Settings2,
            },
            {
                title: "Templates",
                url: "#",
                icon: Blocks,
            },
            {
                title: "Trash",
                url: "#",
                icon: Trash2,
            },
            {
                title: "Help",
                url: "#",
                icon: MessageCircleQuestion,
            },
        ],
        favorites, // Use transformed packs3d data
        workspaces: [
            {
            name: "Beach Pack",
            emoji: "🏖️",
            pages: [
                {
                name: "Low Poly Beach - 2024",
                url: "https://mx60.github.io/Home/Beach",
                emoji: "🏖️",
                }
            ],
            },
            {
            name: "Medieval Pack",
            emoji: "🏰",
            pages: [
                {
                name: "Low Poly Medieval - 2024",
                url: "https://mx60.github.io/Home/Medieval",
                emoji: "🏰",
                }
            ],
            },
            {
            name: "City Pack",
            emoji: "🏙️",
            pages: [
                {
                name: "Low Poly City - 2024",
                url: "https://mx60.github.io/Home/City",
                emoji: "🏙️",
                }
            ],
            },
            {
            name: "Christmas Pack",
            emoji: "🎄",
            pages: [
                {
                name: "Low Poly Christmas Eve - 2024",
                url: "https://mx60.github.io/Home/ChristmasEve",
                emoji: "🎄",
                }
            ],
            },
            {
            name: "Furniture Pack",
            emoji: "🛋️",
            pages: [
                {
                name: "Low Poly Furniture - 2024",
                url: "https://mx60.github.io/Home/Furniture",
                emoji: "🛋️",
                }
            ],
            },
            {
            name: "New Year Pack",
            emoji: "🎉",
            pages: [
                {
                name: "Low Poly New Years - 2024",
                url: "https://mx60.github.io/Home/NewYears",
                emoji: "🎉",
                }
            ],
            },
            {
            name: "Japanese Pack",
            emoji: "🗾",
            pages: [
                {
                name: "Low Poly Japanese - 2025",
                url: "https://mx60.github.io/Home/Japanese",
                emoji: "🗾",
                }
            ],
            },
            {
            name: "Camping Pack",
            emoji: "🏕️",
            pages: [
                {
                name: "Low Poly Camping - 2025",
                url: "https://mx60.github.io/Home/Camping",
                emoji: "🏕️",
                }
            ],
            },
        ],
    };
</script>

<script lang="ts">
    import NavCollection from "./nav-collection.svelte";
    import NavMain from "../components/nav-main.svelte";
    import NavSecondary from "../components/nav-secondary.svelte";
    import NavWorkspaces from "../components/nav-workspaces.svelte";
    import TeamSwitcher from "../components/team-switcher.svelte";
    import * as Sidebar from "$lib/components/ui/sidebar/index.js";
    import type { ComponentProps } from "svelte";

    let {
        ref = $bindable(null),
        ...restProps
    }: ComponentProps<typeof Sidebar.Root> = $props();
</script>

<Sidebar.Root bind:ref class="border-r-0" {...restProps}>
    <Sidebar.Header>
        
        <NavMain items={data.navMain} />
    </Sidebar.Header>
    <Sidebar.Content>
        <NavCollection favorites={data.favorites} />
        
        
    </Sidebar.Content>
    <Sidebar.Rail />
</Sidebar.Root>
