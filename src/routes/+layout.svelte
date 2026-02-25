<script>
  import '../app.css';
  import Header from '$lib/components/Header.svelte';
  import Footer from '$lib/components/Footer.svelte';

  let { children } = $props();
  let showBackToTop = $state(false);

  const handleScroll = () => {
    showBackToTop = window.scrollY > 320;
  };

  const scrollToTop = () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };
</script>

<svelte:head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
</svelte:head>

<Header />
<svelte:window on:scroll={handleScroll} />
<main>
  {@render children()}
</main>

{#if showBackToTop}
  <button class="back-to-top" type="button" aria-label="Back to top" onclick={scrollToTop}>
    <span aria-hidden="true">⌃</span>
  </button>
{/if}

<Footer />

<style>
  main {
    min-height: 100vh;
  }

  .back-to-top {
    position: fixed;
    right: 18px;
    bottom: 90px;
    width: 34px;
    height: 34px;
    border: none;
    border-radius: 2px;
    background: #2f7f9b;
    color: #ffffff;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    font-size: 24px;
    line-height: 1;
    cursor: pointer;
    z-index: 1200;
    box-shadow: 0 8px 22px rgba(0, 0, 0, 0.18);
  }

  .back-to-top:hover {
    background: #25677f;
  }

  @media (max-width: 767px) {
    .back-to-top {
      bottom: 0;
      right: 10px;
    }
  }
</style>
