<script>
  import { page } from '$app/stores';
  import nav from '$lib/data/navigation.json';

  let menuOpen = $state(false);
  let scrolled = $state(false);

  function toggleMenu() {
    menuOpen = !menuOpen;
  }

  $effect(() => {
    function handleScroll() {
      scrolled = window.scrollY > 50;
    }
    window.addEventListener('scroll', handleScroll, { passive: true });
    return () => window.removeEventListener('scroll', handleScroll);
  });
</script>

<header class:scrolled>
  <div class="container header-inner">
    <a href="/" class="logo">
      {#if nav.logo.image}
        <img src={nav.logo.image} alt={nav.logo.text} class="logo-img" />
      {:else}
        <span class="logo-main">{nav.logo.text}</span>
        <span class="logo-tag">{nav.logo.tagline}</span>
      {/if}
    </a>

    <button class="menu-toggle" onclick={toggleMenu} aria-label="Toggle menu" aria-expanded={menuOpen}>
      <span class:open={menuOpen}></span>
      <span class:open={menuOpen}></span>
      <span class:open={menuOpen}></span>
    </button>

    <nav class:open={menuOpen}>
      <ul>
        {#each nav.links as link}
          <li>
            <a
              href={link.href}
              class:active={$page.url.pathname === link.href}
              onclick={() => (menuOpen = false)}
            >
              {link.label}
            </a>
          </li>
        {/each}
      </ul>
    </nav>
  </div>
</header>

<style>
  header {
    background: var(--color-white);
    height: 86px;
    display: flex;
    align-items: center;
    border-bottom: 1px solid #f0f0f0;
  }

  .header-inner {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
  }

  .logo-img {
    height: 52px;
    width: auto;
    object-fit: contain;
  }

  .logo {
    display: flex;
    align-items: center;
    text-decoration: none;
  }

  nav ul {
    display: flex;
    align-items: center;
    gap: 0;
  }

  nav ul li a {
    font-family: 'Lato', sans-serif;
    font-size: 16px;
    font-weight: 400;
    color: rgb(48, 121, 143);
    text-transform: capitalize;
    padding: 8px 13px;
    transition: color 0.2s;
  }

  nav ul li a:hover,
  nav ul li a.active {
    color: var(--color-primary);
  }

  /* Hamburger */
  .menu-toggle {
    display: none;
    flex-direction: column;
    justify-content: center;
    gap: 5px;
    background: none;
    border: none;
    cursor: pointer;
    padding: 6px;
  }

  .menu-toggle span {
    display: block;
    width: 25px;
    height: 2px;
    background: var(--color-white);
    border-radius: 2px;
    transition: all 0.3s ease;
  }

  .menu-toggle span.open:nth-child(1) { transform: translateY(7px) rotate(45deg); }
  .menu-toggle span.open:nth-child(2) { opacity: 0; }
  .menu-toggle span.open:nth-child(3) { transform: translateY(-7px) rotate(-45deg); }

  @media (max-width: 768px) {
    .menu-toggle { display: flex; }

    nav {
      display: none;
      position: absolute;
      top: 100%;
      left: 0;
      right: 0;
      background: var(--color-bg-dark);
      padding: 16px 0;
      box-shadow: var(--shadow-lg);
    }

    nav.open { display: block; }

    nav ul {
      flex-direction: column;
      gap: 0;
    }

    nav ul li a {
      display: block;
      padding: 14px 24px;
      border-radius: 0;
    }
  }
</style>
