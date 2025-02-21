<script lang="ts">
    import { siteConfig } from '$lib/config';
    import {
        Card,
        CardContent,
        CardHeader,
        CardTitle,
    } from "$lib/components/ui/card";
    import { Badge } from "$lib/components/ui/badge";
    
    const { partners } = siteConfig;

    const badges = ["Gaming", "Creative", "Community", "Innovation"];
</script>

<section id="partners" class="container py-24 sm:py-32">
    <div class="text-center mb-8">
        <h2 class="text-lg text-primary text-center mb-2 tracking-wider">
            Our Partners
        </h2>
        <h2 class="text-3xl md:text-4xl text-center font-bold">
            Partnered Brands
        </h2>
    </div>

    <div class="lg:w-[80%] mx-auto relative space-y-24">
        {#each partners as partner, index}
            <div class="flex flex-col md:flex-row items-center gap-8 md:gap-16" 
                 class:md:flex-row-reverse={index % 2 !== 0}>
                <div class="flex-1">
                    <Card class="h-full bg-transparent border-0 shadow-none">
                        <CardHeader>
                            <div class="pb-4">
                                <Badge variant="secondary">{badges[index]}</Badge>
                            </div>
                            <CardTitle class="font-mono text-xl">
                                {partner.name}
                            </CardTitle>
                        </CardHeader>
                        <CardContent class="text-muted-foreground font-mono">
                            {partner.description}
                        </CardContent>
                    </Card>
                </div>

                <div class="flex-shrink-0 w-[200px] h-[200px] flex items-center justify-center">
                    <a href={partner.url} 
                       target="_blank" 
                       rel="noopener noreferrer" 
                       class="group block w-full h-full p-4 bg-white/50 dark:bg-black/20 rounded-xl hover:bg-white/80 dark:hover:bg-black/30 transition-all duration-300">
                        <div class="w-full h-full flex items-center justify-center">
                            <img
                                src={partner.logo}
                                alt={partner.name}
                                class="max-w-full max-h-full object-contain transition-transform duration-300 group-hover:scale-110"
                            />
                        </div>
                    </a>
                </div>

                <div
                    class="-z-10 absolute w-44 h-72 lg:w-64 lg:h-80 rounded-full bg-primary/15 dark:bg-primary/10 blur-3xl"
                    class:left-0={index % 2 !== 0}
                    class:right-0={index % 2 === 0}
                ></div>
            </div>
        {/each}
    </div>

    <div class="mt-24">
        <Card class="bg-primary/5 dark:bg-primary/10">
            <CardContent class="pt-6">
                <h3 class="text-2xl font-bold mb-4">Interested in partnering?</h3>
                <p class="text-muted-foreground font-mono">
                    Direct message <a href={siteConfig.links.twitter} class="text-primary">@MX600000</a> on X (formally known as twitter) for more information.
                </p>
            </CardContent>
        </Card>
    </div>
</section>
