<script lang="ts">
    import { donors, getTotalDonations, getTopDonors } from '$lib/donation-board';
    import { Badge } from "$lib/components/ui/badge";
    import { siteConfig } from '$lib/config';

    const totalDonations = getTotalDonations();
    const topDonors = getTopDonors();
</script>

<section class="container relative overflow-hidden min-h-screen">
    
    <div class="pointer-events-none absolute inset-0 flex items-center justify-center">
        <div class="absolute inset-0 bg-grid-black/20 [mask-image:radial-gradient(ellipse_at_center,black_30%,transparent_70%)]" ></div>
    </div>

    
    <div class="relative z-10 mx-auto py-12 max-w-4xl">
        <div class="text-center space-y-6 mb-12">
            <h1 class="text-4xl font-bold">
                Donation
                <span class="text-transparent bg-gradient-to-r from-[#D247BF] to-primary bg-clip-text">
                    Board
                </span>
            </h1>
            
            <p class="text-muted-foreground max-w-xl mx-auto">
                {#if totalDonations > 0}
                    Thank you to all our amazing supporters! Total donations: ${totalDonations}
                {:else}
                    Be the first to support our project!
                {/if}
            </p>
        </div>

        
        <div class="mb-12">
            <h2 class="text-2xl font-bold mb-6">Top Supporters</h2>
            {#if topDonors.length > 0}
                <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                    {#each topDonors as donor}
                        <div class="bg-card/50 backdrop-blur-sm border rounded-lg p-6 text-center">
                            <div class="mb-4">
                                {#if donor.avatar}
                                    <img src={donor.avatar} alt={donor.name} class="w-16 h-16 rounded-full mx-auto" />
                                {:else}
                                    <div class="w-16 h-16 rounded-full bg-primary/20 mx-auto" ></div>
                                {/if}
                            </div>
                            <h3 class="text-lg font-bold">{donor.name}</h3>
                            <p class="text-muted-foreground">${donor.amount} donated</p>
                        </div>
                    {/each}
                </div>
            {:else}
                <div class="text-center p-12 bg-card/50 backdrop-blur-sm border rounded-lg">
                    <p class="text-lg text-muted-foreground font-mono">Nobody is here, be the first!</p>
                </div>
            {/if}
        </div>

        
        <div>
            <h2 class="text-2xl font-bold mb-6">All Donors</h2>
            {#if donors.length > 0}
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    {#each donors as donor}
                        <div class="bg-card/50 backdrop-blur-sm border rounded-lg p-6">
                            <div class="flex items-center space-x-4">
                                {#if donor.avatar}
                                    <img src={donor.avatar} alt={donor.name} class="w-12 h-12 rounded-full" />
                                {:else}
                                    <div class="w-12 h-12 rounded-full bg-primary/20" ></div>
                                {/if}
                                <div>
                                    <h3 class="text-lg font-bold">{donor.name}</h3>
                                    <p class="text-muted-foreground">${donor.amount} donated</p>
                                </div>
                            </div>
                        </div>
                    {/each}
                </div>
            {:else}
                <div class="text-center p-12 bg-card/50 backdrop-blur-sm border rounded-lg">
                    <p class="text-lg text-muted-foreground font-mono">No donations yet for this period</p>
                    <a href="https://www.patreon.com/c/MX6" 
                       class="inline-block mt-4 text-primary hover:underline font-medium">
                        Support us on Patreon
                    </a>
                </div>
            {/if}
        </div>
    </div>
</section>
