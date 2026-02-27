<script>
  import '../app.css';
  import Header from '$lib/components/Header.svelte';
  import Footer from '$lib/components/Footer.svelte';
  import BackToTop from '$lib/components/BackToTop.svelte';

  let { children } = $props();
</script>

<svelte:head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
  <link rel="stylesheet" href="/assets/main.min.css" />
  <link rel="stylesheet" href="/assets/aos.min.css" />
  <link rel="stylesheet" href="/assets/sbi-styles.min.css" />
  <link rel="stylesheet" href="/assets/spectra-block-positioning.min.css" />
  <link rel="stylesheet" href="/assets/uag-css-28.css" />
</svelte:head>

<Header />

<main>
  {@render children()}
</main>

<BackToTop />

<Footer />

<style>
  main {
    min-height: 100vh;
    padding-top: 90px;
  }
</style>
