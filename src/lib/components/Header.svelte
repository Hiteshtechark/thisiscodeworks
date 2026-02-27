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
    background: rgba(10, 10, 11, 0.8);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    height: 90px;
    display: flex;
    align-items: center;
    border-bottom: 1px solid rgba(255, 255, 255, 0.05);
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1000;
    transition: var(--transition);
  }

  header.scrolled {
    height: 72px;
    background: rgba(10, 10, 11, 0.95);
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.3);
  }

  .header-inner {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
  }

  .logo-img {
    height: 48px;
    width: auto;
    object-fit: contain;
    transition: var(--transition);
    filter: brightness(0) invert(1); /* Ensure logo is white for dark theme */
  }

  header.scrolled .logo-img {
    height: 40px;
  }

  .logo {
    display: flex;
    align-items: center;
    text-decoration: none;
    transition: var(--transition);
  }

  .logo:hover {
    opacity: 0.8;
  }

  nav ul {
    display: flex;
    align-items: center;
    gap: 8px;
  }

  nav ul li a {
    font-family: var(--font-body);
    font-size: 15px;
    font-weight: 500;
    color: var(--color-white);
    text-transform: capitalize;
    padding: 8px 16px;
    border-radius: var(--radius-sm);
    transition: var(--transition);
    position: relative;
  }

  nav ul li a::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 16px;
    right: 16px;
    height: 2px;
    background: var(--color-primary);
    transform: scaleX(0);
    transition: var(--transition);
  }

  nav ul li a:hover {
    color: var(--color-primary);
  }

  nav ul li a:hover::after,
  nav ul li a.active::after {
    transform: scaleX(1);
  }

  nav ul li a.active {
    color: var(--color-primary);
  }

  /* Hamburger */
  .menu-toggle {
    display: none;
    flex-direction: column;
    justify-content: center;
    gap: 6px;
    background: none;
    border: none;
    cursor: pointer;
    padding: 8px;
  }

  .menu-toggle span {
    display: block;
    width: 28px;
    height: 2px;
    background: var(--color-white);
    border-radius: 2px;
    transition: var(--transition);
  }

  .menu-toggle span.open:nth-child(1) { transform: translateY(8px) rotate(45deg); }
  .menu-toggle span.open:nth-child(2) { opacity: 0; }
  .menu-toggle span.open:nth-child(3) { transform: translateY(-8px) rotate(-45deg); }

  @media (max-width: 768px) {
    .menu-toggle { display: flex; }

    nav {
      display: none;
      position: absolute;
      top: 100%;
      left: 0;
      right: 0;
      background: var(--color-bg-dark);
      padding: 24px 0;
      box-shadow: var(--shadow-lg);
      border-bottom: 1px solid var(--color-border);
    }

    nav.open { display: block; }

    nav ul {
      flex-direction: column;
      gap: 12px;
    }

    nav ul li a {
      display: block;
      padding: 12px 32px;
      border-radius: 0;
      font-size: 18px;
    }

    nav ul li a::after {
      display: none;
    }
  }
</style>
