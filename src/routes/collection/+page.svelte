<script lang="ts">
    import { content } from "$lib/content";
    import { goto } from "$app/navigation";
    import type { ComponentType, SvelteComponent } from 'svelte';
    
    let title = $state("3D Model Collections");
    
    $effect.root(() => {
        title = "3D Model Collections";
    });
    
    async function navigateToCollection(url: string) {
        await goto(url);
    }
</script>

<div class="container mx-auto px-4 max-w-7xl">
    <div class="grid auto-rows-min gap-4 grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
        {#each content.packs3d as pack}
            <div
                class="group bg-muted/50 aspect-video rounded-xl flex flex-col relative overflow-hidden hover:bg-muted/70 transition-colors cursor-pointer"
                onclick={() => navigateToCollection(pack.url)}
                onkeydown={(e) => e.key === 'Enter' && navigateToCollection(pack.url)}
                role="button"
                tabindex="0"
            >
                <div class="pointer-events-none absolute inset-0">
                    <div
                        class="absolute inset-0 bg-grid-black/20 [mask-image:radial-gradient(ellipse_at_center,black_30%,transparent_70%)]"
                    ></div>
                </div>
                <div
                    class="absolute -top-2 right-8 w-[90%] h-[80%] bg-primary/30 blur-3xl rounded-full opacity-0 group-hover:opacity-100 transition-opacity"
                ></div>
                <div class="absolute inset-0 p-4">
                    <img
                        src={pack.icon}
                        alt={pack.name}
                        class="w-full h-full object-contain transition-transform group-hover:scale-105"
                    />
                </div>
                <div
                    class="relative mt-auto p-4 w-full bg-gradient-to-t from-background/80 via-background/50 to-transparent"
                >
                    <h3 class="text-lg font-bold drop-shadow-sm">{pack.name}</h3>
                    <p class="text-sm text-muted-foreground drop-shadow-sm">
                        {pack.year}
                    </p>
                    <p class="text-sm drop-shadow-sm">
                        {pack.models.length} models
                    </p>
                </div>
            </div>
        {/each}
    </div>
    
</div>

<style>
    .bg-grid-black {
        background-size: 40px 40px;
        background-image: linear-gradient(
                to right,
                rgb(0 0 0) 1px,
                transparent 1px
            ),
            linear-gradient(to bottom, rgb(0 0 0) 1px, transparent 1px);
        background-position: center center;
    }

    :global(.dark) .bg-grid-black {
        background-image: linear-gradient(
                to right,
                rgb(255 255 255) 1px,
                transparent 1px
            ),
            linear-gradient(to bottom, rgb(255 255 255) 1px, transparent 1px);
    }
</style>
