<script lang="ts">
    import { siteConfig } from "$lib/config";
    import { content } from "$lib/content";
    const currentYear = new Date().getFullYear();
</script>

<footer class="container mx-auto px-4 max-w-7xl py-6">
    <div class="bg-muted/50 border rounded-xl p-6">
        <div class="flex flex-col md:flex-row items-center justify-between gap-6">
            <div class="text-sm text-muted-foreground">
                © {currentYear} {siteConfig.name} Project.
            </div>
            <div class="flex items-center gap-3">
                {#each content.socials as social}
                    {@const Icon = social.icon}
                    <a
                        href={social.url}
                        target="_blank"
                        rel="noopener noreferrer"
                        class="p-2.5 rounded-md bg-background hover:bg-accent hover:text-accent-foreground transition-colors border"
                    >
                        <Icon  />
                    </a>
                {/each}
            </div>
            <div class="text-sm text-muted-foreground font-mono">
                {content.version}
            </div>
        </div>
    </div>
</footer>
