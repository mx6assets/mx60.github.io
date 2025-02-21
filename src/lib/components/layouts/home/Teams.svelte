<script lang="ts">
    import { siteConfig } from "$lib/config";
    import {
        Card,
        CardContent,
        CardHeader,
        CardTitle,
        CardFooter,
    } from "$lib/components/ui/card";

    import XIcon from "$lib/icons/XIcon.svelte";
    import GitHubIcon from "$lib/icons/GithubIcon.svelte";

    const socialIconMap = {
        X: XIcon,
        github: GitHubIcon,
    };
</script>

<section
    id="team"
    class="container max-w-7xl mx-auto px-4 py-16 sm:py-24 lg:py-32"
>
    <div class="text-center mb-12">
        <h2 class="text-lg text-primary text-center mb-3 tracking-wider">
            Team
        </h2>
        <h2 class="text-3xl md:text-4xl text-center font-bold">
            The {siteConfig.name} Team
        </h2>
    </div>

    <div
        class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 xl:grid-cols-4 gap-6 md:gap-8 justify-center items-start"
    >
        {#each siteConfig.team.members as { name, role, image, socials }}
            <Card
                class="bg-muted/60 dark:bg-card flex flex-col h-full overflow-hidden group/hoverimg"
            >
                <CardHeader class="p-0 gap-0">
                    <div class="h-full overflow-hidden">
                        <img
                            src={image}
                            alt={name}
                            class="w-full aspect-square object-cover saturate-0 transition-all duration-300 ease-in-out group-hover/hoverimg:saturate-100 group-hover/hoverimg:scale-105"
                        />
                    </div>
                    <CardTitle class="p-4 sm:p-6">
                        {name}
                    </CardTitle>
                </CardHeader>

                <div class="px-4 sm:px-6 flex-grow">
                    <CardContent class="p-0 pb-2 text-muted-foreground">
                        {role}
                    </CardContent>
                </div>

                <CardFooter class="space-x-4 px-4 sm:px-6 py-4">
                    {#if socials && 'twitter' in socials}
                        <a
                            href={socials.twitter}
                            target="_blank"
                            class="hover:opacity-80 transition-opacity"
                            aria-label="Visit our X/Twitter page"
                        >
                            <XIcon />
                        </a>
                    {/if}
                    {#if socials && 'github' in socials}
                        <a
                            href={socials.github}
                            target="_blank"
                            class="hover:opacity-80 transition-opacity"
                            aria-label="Visit GitHub profile"
                        >
                            <GitHubIcon />
                        </a>
                    {/if}
                </CardFooter>
            </Card>
        {/each}
    </div>
</section>
