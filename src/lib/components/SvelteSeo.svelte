<script lang="ts">
    import { siteConfig } from "$lib/config";
    import { page } from "$app/stores";

    export let title: string | (() => string) = siteConfig.name;
    export let description = siteConfig.description;
    export let keywords = siteConfig.metadata.keywords;
    export let image = siteConfig.metadata.openGraph.image;
    export let type = siteConfig.metadata.openGraph.type;
    export let noindex = false;
    export let nofollow = false;

    $: canonicalUrl = `${$page.url.origin}${$page.url.pathname}`;
    $: metaDescription = description;
    $: metaTitle = `${typeof title === 'function' ? title() : title} - ${siteConfig.name}`;
</script>

<svelte:head>
    <title>{metaTitle}</title>
    <meta name="description" content={metaDescription} />
    <meta name="keywords" content={keywords.join(", ")} />
    
    <!-- OpenGraph -->
    <meta property="og:title" content={metaTitle} />
    <meta property="og:description" content={metaDescription} />
    <meta property="og:type" content={type} />
    <meta property="og:image" content={image} />
    <meta property="og:url" content={canonicalUrl} />
    
    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={metaTitle} />
    <meta name="twitter:description" content={metaDescription} />
    <meta name="twitter:image" content={image} />
    
    <!-- Canonical -->
    <link rel="canonical" href={canonicalUrl} />
    
    {#if noindex || nofollow}
        <meta name="robots" content="{noindex ? 'noindex' : ''}{noindex && nofollow ? ',' : ''}{nofollow ? 'nofollow' : ''}" />
    {/if}

    <meta name="author" content={siteConfig.metadata.author} />
</svelte:head>
