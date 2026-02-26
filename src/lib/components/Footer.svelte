<script>
  import nav from '$lib/data/navigation.json';
</script>

<footer>
  <div class="footer-top">
    <div class="container footer-inner">
      <div class="footer-brand">
        <a href="/" class="logo">
          {#if nav.logo.image}
            <img src={nav.logo.image} alt={nav.logo.text} class="logo-img" />
          {:else}
            <span class="logo-main">{nav.logo.text}</span>
            <span class="logo-tag">{nav.logo.tagline}</span>
          {/if}
        </a>
        <p class="footer-desc">
          A connected entity of TechArk
        </p>
      </div>

      <div class="footer-links">
        <h4>Quick Links</h4>
        <ul>
          {#each nav.links as link}
            <li><a href={link.href}>{link.label}</a></li>
          {/each}
        </ul>
      </div>

      <div class="footer-contact">
        <h4>Get In Touch</h4>
        <ul class="contact-list">
          <li>
            <span class="icon">📧</span>
            <a href="mailto:hr.codeworksconsulting@gmail.com">hr.codeworksconsulting@gmail.com</a>
          </li>
          <li>
            <span class="icon">📍</span>
            <span>806-807 Trinity Orion, Besides Jolly Residency Vesu, Surat 395007</span>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <div class="footer-bottom">
    <div class="container footer-bottom-inner">
      <p>&copy; {new Date().getFullYear()} Codeworks Consulting. All Rights Reserved.</p>
      <ul class="footer-nav">
        {#each nav.links as link}
          <li><a href={link.href}>{link.label}</a></li>
        {/each}
      </ul>
    </div>
  </div>
</footer>

<style>
  footer {
    background: #050506;
    color: var(--color-text-muted);
    font-family: var(--font-body);
    border-top: 1px solid var(--color-border);
  }

  .footer-top {
    padding: 100px 0 60px;
  }

  .footer-inner {
    display: grid;
    grid-template-columns: 2fr 1fr 1.5fr;
    gap: 60px;
  }

  .logo-img {
    height: 44px;
    width: auto;
    object-fit: contain;
    margin-bottom: 24px;
    filter: brightness(0) invert(1);
  }

  .logo {
    display: flex;
    flex-direction: column;
    text-decoration: none;
  }

  .footer-brand p {
    font-size: 15px;
    line-height: 1.8;
    color: var(--color-text-muted);
    max-width: 320px;
  }

  .footer-links h4,
  .footer-contact h4 {
    font-family: var(--font-heading);
    font-size: 18px;
    font-weight: 700;
    color: var(--color-white);
    margin-bottom: 28px;
    text-transform: uppercase;
    letter-spacing: 2px;
  }

  .footer-links ul li {
    margin-bottom: 12px;
  }

  .footer-links ul li a {
    font-size: 15px;
    color: var(--color-text-muted);
    transition: var(--transition);
    display: inline-flex;
    align-items: center;
    gap: 8px;
  }

  .footer-links ul li a::before {
    content: '';
    width: 6px;
    height: 1px;
    background: var(--color-primary);
    transition: var(--transition);
  }

  .footer-links ul li a:hover {
    color: var(--color-primary);
    transform: translateX(5px);
  }

  .contact-list li {
    display: flex;
    align-items: center;
    gap: 16px;
    margin-bottom: 16px;
    font-size: 15px;
  }

  .contact-list li a {
    color: var(--color-text-muted);
    transition: var(--transition);
  }

  .contact-list li a:hover {
    color: var(--color-primary);
  }

  .icon {
    font-size: 20px;
    color: var(--color-primary);
  }

  .footer-bottom {
    padding: 32px 0;
    border-top: 1px solid var(--color-border);
  }

  .footer-bottom-inner {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 24px;
  }

  .footer-bottom p {
    font-size: 14px;
    color: var(--color-text-muted);
  }

  .footer-nav {
    display: flex;
    gap: 24px;
  }

  .footer-nav li a {
    font-size: 13px;
    font-weight: 600;
    color: var(--color-text-muted);
    text-transform: uppercase;
    letter-spacing: 1px;
    transition: var(--transition);
  }

  .footer-nav li a:hover {
    color: var(--color-primary);
  }

  @media (max-width: 1024px) {
    .footer-inner {
      grid-template-columns: 1fr 1fr;
    }
    .footer-brand {
      grid-column: 1 / -1;
      text-align: center;
    }
    .footer-brand p {
      margin: 0 auto;
    }
  }

  @media (max-width: 640px) {
    .footer-inner {
      grid-template-columns: 1fr;
      text-align: center;
      gap: 40px;
    }
    .footer-bottom-inner {
      flex-direction: column;
    }
    .footer-nav {
      justify-content: center;
    }
    .footer-links ul li a {
      justify-content: center;
    }
  }
</style>
