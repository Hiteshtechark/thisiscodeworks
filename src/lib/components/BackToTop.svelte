<script>
  import { fade } from 'svelte/transition';
  let visible = $state(false);

  $effect(() => {
    function handleScroll() {
      visible = window.scrollY > 400;
    }
    window.addEventListener('scroll', handleScroll, { passive: true });
    return () => window.removeEventListener('scroll', handleScroll);
  });

  function scrollToTop() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }
</script>

{#if visible}
  <button
    class="back-to-top"
    onclick={scrollToTop}
    aria-label="Back to top"
    transition:fade={{ duration: 300 }}
  >
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18" height="18" fill="currentColor">
      <path d="M201.4 137.4c12.5-12.5 32.8-12.5 45.3 0l160 160c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L224 205.3 86.6 342.6c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l160-160z"></path>
    </svg>
  </button>
{/if}

<style>
  .back-to-top {
    position: fixed;
    bottom: 40px;
    right: 40px;
    width: 56px;
    height: 56px;
    border-radius: 50%;
    background: var(--color-primary);
    color: var(--color-white);
    border: none;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 8px 24px var(--color-primary-glow);
    z-index: 999;
    transition: var(--transition);
  }

  .back-to-top:hover {
    transform: translateY(-5px) scale(1.05);
    background: var(--color-white);
    color: var(--color-primary);
    box-shadow: 0 12px 32px rgba(255, 255, 255, 0.2);
  }

  @media (max-width: 768px) {
    .back-to-top {
      bottom: 24px;
      right: 24px;
      width: 48px;
      height: 48px;
    }
  }
</style>
