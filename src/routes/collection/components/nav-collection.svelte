<script lang="ts">
    import { goto } from "$app/navigation";
    import { page } from "$app/stores";
	import * as DropdownMenu from "$lib/components/ui/dropdown-menu/index.js";
	import * as Sidebar from "$lib/components/ui/sidebar/index.js";
	import { useSidebar } from "$lib/components/ui/sidebar/index.js";
	import ArrowUpRight from "lucide-svelte/icons/arrow-up-right";
	import Ellipsis from "lucide-svelte/icons/ellipsis";
	import Link from "lucide-svelte/icons/link";
	import StarOff from "lucide-svelte/icons/star-off";
	import Trash2 from "lucide-svelte/icons/trash-2";
	
	let {
		favorites,
	}: {
		favorites: {
			name: string;
			url: string;
			emoji: string;
		}[];
	} = $props();

	const sidebar = useSidebar();
    
	// Check if item is active based on current URL
	let isActive = $derived.by(() => {
		const currentPath = $page.url.pathname;
		return (itemUrl: string) => currentPath === itemUrl;
	});

    // Handle navigation with goto
    async function handleNavigation(url: string, e: MouseEvent) {
        e.preventDefault();
        await goto(url);
    }
</script>

<Sidebar.Group class="group-data-[collapsible=icon]:hidden">
	<Sidebar.GroupLabel>Collection</Sidebar.GroupLabel>
	<Sidebar.Menu>
		{#each favorites as item (item.name)}
			<Sidebar.MenuItem>
				<Sidebar.MenuButton data-active={isActive(item.url)}>
					{#snippet child({ props })}
						<a 
                            href={item.url} 
                            title={item.name}
                            class:active={isActive(item.url)}
                            onclick={(e) => handleNavigation(item.url, e)}
                            {...props}
                        >
							<span>{item.emoji}</span>
							<span>{item.name}</span>
						</a>
					{/snippet}
				</Sidebar.MenuButton>
				<!-- <DropdownMenu.Root>
					<DropdownMenu.Trigger>
						{#snippet child({ props })}
							<Sidebar.MenuAction showOnHover {...props}>
								<Ellipsis />
								<span class="sr-only">More</span>
							</Sidebar.MenuAction>
						{/snippet}
					</DropdownMenu.Trigger>
					<DropdownMenu.Content
						class="w-56 rounded-lg"
						side={sidebar.isMobile ? "bottom" : "right"}
						align={sidebar.isMobile ? "end" : "start"}
					>
						<DropdownMenu.Item>
							<StarOff class="text-muted-foreground" />
							<span>Remove from Favorites</span>
						</DropdownMenu.Item>
						<DropdownMenu.Separator />
						<DropdownMenu.Item>
							<Link class="text-muted-foreground" />
							<span>Copy Link</span>
						</DropdownMenu.Item>
						<DropdownMenu.Item>
							<ArrowUpRight class="text-muted-foreground" />
							<span>Open in New Tab</span>
						</DropdownMenu.Item>
						<DropdownMenu.Separator />
						<DropdownMenu.Item>
							<Trash2 class="text-muted-foreground" />
							<span>Delete</span>
						</DropdownMenu.Item>
					</DropdownMenu.Content>
				</DropdownMenu.Root> -->
			</Sidebar.MenuItem>
		{/each}
		<!-- <Sidebar.MenuItem>
			<Sidebar.MenuButton class="text-sidebar-foreground/70">
				<Ellipsis />
				<span>More</span>
			</Sidebar.MenuButton>
		</Sidebar.MenuItem> -->
	</Sidebar.Menu>
</Sidebar.Group>

<style>
    .active {
        background-color: hsl(var(--primary) / 0.1);
        color: hsl(var(--primary));
    }
</style>