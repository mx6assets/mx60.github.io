<script lang="ts">
    import { releaseNotes } from '$lib/release-notes';
    import { Badge } from "$lib/components/ui/badge";
    import { ArrowLeft } from "lucide-svelte";
    import { siteConfig } from '$lib/config';
</script>
<section class="container relative overflow-hidden min-h-screen">
    
    <div class="pointer-events-none absolute inset-0 flex items-center justify-center">
        <div class="absolute inset-0 bg-grid-black/20 [mask-image:radial-gradient(ellipse_at_center,black_30%,transparent_70%)]" ></div>
    </div>

    
    <div class="relative z-10 mx-auto py-12 max-w-4xl">
        
        <div class="text-center space-y-6 mb-12">

            <h1 class="text-4xl font-bold">
                Release
                <span class="text-transparent bg-gradient-to-r from-[#D247BF] to-primary bg-clip-text">
                    Notes
                </span>
            </h1>
            
            <p class="text-muted-foreground max-w-xl mx-auto">
                Track our journey and updates as we continue to expand and improve MX6 Studio
            </p>
        </div>

        
        <div class="space-y-6">
            {#each releaseNotes as note}
                <div class="group relative bg-card/50 backdrop-blur-sm border rounded-lg p-6 transition-all duration-300 hover:border-primary/50">
                    <div class="absolute -inset-2 bg-gradient-to-r from-primary/20 to-[#D247BF]/20 rounded-lg blur opacity-0 group-hover:opacity-100 transition-opacity"></div>
                    <div class="relative flex gap-6">
                        <div class="flex-1">
                            <div class="flex items-center justify-between mb-4">
                                <h2 class="text-xl font-bold">{note.version}</h2>
                                <Badge variant="outline">{note.date}</Badge>
                            </div>
                            <div class="space-y-2">
                                <h3 class="text-sm font-medium text-muted-foreground">Added:</h3>
                                <ul class="space-y-1">
                                    {#each note.additions as addition}
                                        <li class="text-sm pl-4 relative before:absolute before:left-0 before:top-[0.6em] before:h-1.5 before:w-1.5 before:rounded-full before:bg-primary/80">
                                            {addition}
                                        </li>
                                    {/each}
                                </ul>
                            </div>
                        </div>
                        {#if note.image}
                            <div class="flex-shrink-0 w-48">
                                <img 
                                    src={note.image} 
                                    alt="Release preview" 
                                    class="w-full h-full object-cover rounded-lg"
                                />
                            </div>
                        {/if}
                    </div>
                </div>
            {/each}
        </div>
    </div>
</section>

<style>
    /* Grid background pattern */
    .bg-grid-black {
        background-size: 40px 40px;
        background-image: 
            linear-gradient(to right, rgb(0 0 0) 1px, transparent 1px),
            linear-gradient(to bottom, rgb(0 0 0) 1px, transparent 1px);
        background-position: center center;
    }

    :global(.dark) .bg-grid-black {
        background-image: 
            linear-gradient(to right, rgb(255 255 255 / 0.1) 1px, transparent 1px),
            linear-gradient(to bottom, rgb(255 255 255 / 0.1) 1px, transparent 1px);
    }
</style>
