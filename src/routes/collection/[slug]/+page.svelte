<script lang="ts">
    import type { PageData } from './$types';
    import * as Sheet from "$lib/components/ui/sheet/index.js";
    import { Button } from "$lib/components/ui/button";
    import FBXViewer from './FBXViewer.svelte';
    
    export let data: PageData;
    $: ({ pack } = data);

    // Track which model's sheet is open
    let openModelId: string | null = null;

    // Add responsive sheet side detection
    let windowWidth: number;
    
    $: sheetSide = windowWidth <= 768 ? 'bottom' as const : 'right' as const;
    $: sheetClass = windowWidth <= 768 ? 'h-[85vh]' : 'w-[90vw] max-w-[1400px]';
</script>

<svelte:window bind:innerWidth={windowWidth} />

<div class="container mx-auto px-4 max-w-7xl">
    <div class="flex items-center gap-4 mb-6">
        <img src={pack.icon} alt={pack.name} class="w-16 h-16 object-contain" />
        <div>
            <h1 class="text-2xl font-bold">{pack.name}</h1>
            <p class="text-muted-foreground">{pack.year}</p>
        </div>
    </div>

    <div class="grid gap-4 grid-cols-1 sm:grid-cols-2 lg:grid-cols-3">
        {#each pack.models as model, index (model.file)}
            <Sheet.Root 
                open={openModelId === model.file}
                onOpenChange={(open: boolean) => {
                    openModelId = open ? model.file : null;
                }}
            >
                <div class="bg-muted/50 p-4 rounded-xl border">
                    <h3 class="font-semibold">{model.name}</h3>
                    <div class="text-sm text-muted-foreground space-y-1 mt-4">
                        <p>Vertices: {model.vertices}</p>
                        <p>Size: {model.size}</p>
                        <p>File: {model.file}</p>
                    </div>
                    <div class="mt-4 flex gap-2">
                        <Sheet.Trigger >
                            <Button variant="default" class="w-full">
                                View 3D Model
                            </Button>
                        </Sheet.Trigger>
                        <Button 
                            href={model.file} 
                            variant="outline"
                            class="w-full"
                            download
                        >
                            Download
                        </Button>
                    </div>
                </div>

                <Sheet.Content 
                    side={sheetSide} 
                    class={sheetClass}
                >
                    <Sheet.Header>
                        <Sheet.Title>{model.name}</Sheet.Title>
                        <Sheet.Description>
                            3D Model Preview
                        </Sheet.Description>
                    </Sheet.Header>
                    
                    <div class="py-4 h-full">
                        {#if openModelId === model.file}
                            <div class="h-[calc(100%-120px)]">
                                <FBXViewer modelUrl={model.file} />
                            </div>
                        {/if}
                        <div class="space-y-4 mt-4">
                            <div>
                                <h4 class="text-sm font-medium">Statistics</h4>
                                <p class="text-sm text-muted-foreground">Vertices: {model.vertices}</p>
                                <p class="text-sm text-muted-foreground">File size: {model.size}</p>
                            </div>
                        </div>
                    </div>
                </Sheet.Content>
            </Sheet.Root>
        {/each}
    </div>
</div>
