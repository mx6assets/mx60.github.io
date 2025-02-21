<script lang="ts">
  import { ModeWatcher } from "mode-watcher";
  import "../app.css";
  import Navbar from "$lib/components/layouts/home/Navbar.svelte";
  import { page } from "$app/stores";
  import SvelteSeo from "$lib/components/SvelteSeo.svelte";
  import Footer from "$lib/components/layouts/home/Footer.svelte";
  let { children } = $props();

  const showNavbar = $derived(!$page.url.pathname.startsWith("/collection"));

  // Dynamic title based on route
  const pageTitle = $derived(
    (() => {
      const path = $page.url.pathname;
      if (path === "/") return "Home";
      return path
        .split("/")
        .filter(Boolean)
        .map((segment) =>
          segment
            .split("-")
            .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
            .join(" "),
        )
        .join(" - ");
    })(),
  );
</script>

<ModeWatcher />
<SvelteSeo title={pageTitle} />
{#if showNavbar}
  <Navbar />
{/if}
{@render children()}
{#if showNavbar}
  <Footer />
{/if}
