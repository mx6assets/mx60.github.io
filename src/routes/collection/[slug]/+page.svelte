<script lang="ts">
    import type { PageData } from "./$types";
    import * as Sheet from "$lib/components/ui/sheet/index.js";
    import * as Dialog from "$lib/components/ui/dialog/index.js";
    import { Button } from "$lib/components/ui/button";
    import FBXViewer from "./FBXViewer.svelte";
    import { siteConfig } from "$lib/config";
    import { Loader2 } from "lucide-svelte"; // Add this import

    export let data: PageData;
    $: ({ pack } = data);

    let openModelId: string | null = null;
    let windowWidth: number;
    let showDialog = false;
    let downloadingModel: string | null = null; 

    $: sheetSide =
        windowWidth <= 768 ? ("bottom" as const) : ("right" as const);
    $: sheetClass = windowWidth <= 768 ? "h-[85vh]" : "w-[90vw] max-w-[1400px]";

    const sleep = (ms: number) =>
        new Promise((resolve) => setTimeout(resolve, ms));

    async function handleDownload(url: string) {
        if (downloadingModel) return; // Prevent multiple downloads
        downloadingModel = url;

        try {
            // Add 1s delay for visual feedback
            await sleep(1000);

            const response = await fetch(url);
            if (!response.ok) throw new Error("Download failed");

            const blob = await response.blob();
            const downloadUrl = window.URL.createObjectURL(blob);
            const link = document.createElement("a");
            link.href = downloadUrl;
            link.download = url.split("/").pop() || "model.fbx";
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
            window.URL.revokeObjectURL(downloadUrl);

            // Show thank you dialog after successful download
            showDialog = true;
        } catch (error) {
            console.error("Download failed:", error);
        } finally {
            downloadingModel = null;
        }
    }
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
                        <!-- <p>File: {model.file}</p> -->
                    </div>
                    <div class="mt-4 flex gap-2">
                        <Sheet.Trigger>
                            <Button variant="default" class="w-full">
                                View 3D Model
                            </Button>
                        </Sheet.Trigger>
                        <Button
                            variant="outline"
                            class="w-full"
                            disabled={downloadingModel === model.file}
                            onclick={() => handleDownload(model.file)}
                        >
                            {#if downloadingModel === model.file}
                                <Loader2 class="mr-2 h-4 w-4 animate-spin" />
                                <span>Downloading...</span>
                            {:else}
                                Download
                            {/if}
                        </Button>
                    </div>
                </div>
                <Dialog.Root
                    open={showDialog}
                    onOpenChange={(open) => (showDialog = open)}
                >
                    <Dialog.Content class="sm:max-w-[425px]">
                        <Dialog.Header>
                            <Dialog.Title
                                >Thank You for Downloading!</Dialog.Title
                            >
                            <Dialog.Description>
                                We're glad you found our assets useful! Would
                                you consider:
                            </Dialog.Description>
                        </Dialog.Header>
                        <div class="py-4 space-y-4">
                            <p class="text-sm text-muted-foreground">
                                • Following us on social media
                            </p>
                            <p class="text-sm text-muted-foreground">
                                • Supporting us on Patreon
                            </p>
                            <p class="text-sm text-muted-foreground">
                                • Joining our Discord community
                            </p>
                        </div>
                        <Dialog.Footer class="flex justify-between">
                            <Button variant="outline">
                                <a
                                    href={siteConfig.links.patreon}
                                    target="_blank"
                                    rel="noopener noreferrer"
                                >
                                    Support Us
                                </a>
                            </Button>
                            <Button
                                variant="default"
                                onclick={() => (showDialog = false)}
                            >
                                Maybe Later
                            </Button>
                        </Dialog.Footer>
                    </Dialog.Content>
                </Dialog.Root>

                <Sheet.Content side={sheetSide} class={sheetClass}>
                    <Sheet.Header>
                        <Sheet.Title>{model.name}</Sheet.Title>
                        <Sheet.Description>3D Model Preview</Sheet.Description>
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
                                <p class="text-sm text-muted-foreground">
                                    Vertices: {model.vertices}
                                </p>
                                <p class="text-sm text-muted-foreground">
                                    File size: {model.size}
                                </p>
                            </div>
                        </div>
                    </div>
                </Sheet.Content>
            </Sheet.Root>
        {/each}
    </div>
</div>
