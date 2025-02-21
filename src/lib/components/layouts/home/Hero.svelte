<script lang="ts">
    import { Badge } from "$lib/components/ui/badge";
    import { Button } from "$lib/components/ui/button";
    import { ArrowRight } from "lucide-svelte";
    import { mode } from "mode-watcher";
    import { onMount } from 'svelte';

    let imageSrc = '/og-light.png';
    
    onMount(() => {
        mode.subscribe(currentMode => {
            imageSrc = currentMode === 'dark' ? '/og-dark.png' : '/og-light.png';
        });
    });

    $: isDark = $mode === "dark";
</script>

<section class="container relative overflow-hidden">
    <div class="pointer-events-none absolute inset-0 flex items-center justify-center">
        <div class="absolute inset-0 bg-grid-black opacity-20 [mask-image:radial-gradient(ellipse_at_center,black_30%,transparent_70%)]" />
        
    </div>
    <div
        class="relative z-10 grid place-items-center lg:max-w-screen-xl gap-8 mx-auto py-20 md:py-32"
    >
        <div class="text-center space-y-8">
            <Badge variant="outline" class="text-sm py-2">
                <span class="mr-2 text-primary">
                    <Badge>New</Badge>
                </span>
                <span>MX6 Studio Launch</span>
            </Badge>

            <div
                class="max-w-screen-md mx-auto text-center text-5xl md:text-6xl font-bold"
            >
                <h1>
                    Welcome to
                    <span
                        class="text-transparent bg-gradient-to-r from-[#D247BF] to-primary bg-clip-text"
                    >
                        MX6 Studio
                    </span>
                </h1>
            </div>

            <p class="max-w-screen-sm mx-auto text-xl text-muted-foreground">
                MX6 is a new 3D and 2D art publisher for game developers and content creators. 
                We create models and UI for your projects, run by a small passionate team of students.
            </p>

            <div class="space-y-4 md:space-y-0 md:space-x-4">
                <Button class="w-5/6 md:w-1/4 font-bold group/arrow">
                    <a
                        href="/collection"
                    >
                        View Collection
                    </a>
                    <ArrowRight
                        class="size-5 ml-2 group-hover/arrow:translate-x-1 transition-transform"
                    />
                </Button>

                <!-- <Button  class="w-5/6 md:w-1/4 font-bold">
                    <a
                        href="/collection"
                    >
                        View Collection
                    </a>
                </Button> -->
            </div>
        </div>

        <div class="relative group mt-14">
            <div
                class="absolute -top-6 right-12 w-[90%] h-12 lg:h-[80%] bg-primary/50 blur-3xl rounded-full img-shadow-animation"
            ></div>

            <img
                class="w-full md:w-[1200px] mx-auto rounded-lg relative rouded-lg leading-none flex items-center border border-t-2 border-t-primary/30 img-border-animation"
                src={imageSrc}
                alt="dashboard using shadcn-svelte"
            />

            <div
                class="absolute bottom-0 left-0 w-full h-20 md:h-28 bg-gradient-to-b from-background/0 via-background/50 to-background rounded-lg"
            ></div>
        </div>
    </div>
</section>

<style>
    .img-shadow-animation {
        animation-name: img-shadow-animation;
        animation-iteration-count: infinite;
        animation-duration: 2s;
        animation-timing-function: linear;
        animation-direction: alternate;
    }

    .img-border-animation {
        animation-name: img-border-animation;
        animation-iteration-count: infinite;
        animation-duration: 2s;
        animation-timing-function: linear;
        animation-direction: alternate;
    }

    @keyframes img-shadow-animation {
        from {
            opacity: 0.5;
            transform: translateY(30px);
        }

        to {
            opacity: 1;
            transform: translateY(0px);
        }
    }

    @keyframes img-border-animation {
        from {
            @apply border-t-primary/10;
        }

        to {
            @apply border-t-primary/60;
        }
    }

    /* Grid background pattern */
    .bg-grid-black {
        background-size: 40px 40px;
        background-image: 
            linear-gradient(to right, rgb(0 0 0) 2px, transparent 2px),
            linear-gradient(to bottom, rgb(0 0 0) 2px, transparent 2px);
        background-position: center center;
    }

    /* Dot background pattern */
    .bg-dot-pattern {
        background-image: radial-gradient(rgb(0 0 0) 1px, transparent 1px);
        background-size: 20px 20px;
        background-position: center center;
    }

    :global(.dark) .bg-grid-black {
        background-image: 
            linear-gradient(to right, rgb(255 255 255) 2px, transparent 2px),
            linear-gradient(to bottom, rgb(255 255 255) 2px, transparent 2px);
    }

    :global(.dark) .bg-dot-pattern {
        background-image: radial-gradient(rgb(255 255 255) 1px, transparent 1px);
    }
</style>