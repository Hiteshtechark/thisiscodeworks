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
    background: var(--color-bg-dark);
    color: rgba(255,255,255,0.75);
    font-family: var(--font-body);
  }

  .footer-top {
    padding: 72px 0 48px;
    border-bottom: 1px solid rgba(255,255,255,0.08);
  }

  .footer-inner {
    display: grid;
    grid-template-columns: 2fr 1fr 1.5fr;
    gap: 48px;
  }

  .logo-img {
    height: 40px;
    width: auto;
    object-fit: contain;
    margin-bottom: 12px;
  }

  .logo {
    display: flex;
    flex-direction: column;
    line-height: 1.1;
    margin-bottom: 16px;
  }

  .logo-main {
    font-family: var(--font-heading);
    font-size: 20px;
    font-weight: 800;
    color: var(--color-white);
    letter-spacing: 2px;
  }

  .logo-tag {
    font-family: var(--font-body);
    font-size: 10px;
    font-weight: 400;
    color: var(--color-primary);
    letter-spacing: 3px;
    text-transform: uppercase;
  }

  .footer-desc {
    font-size: 14px;
    line-height: 1.8;
    color: rgba(255,255,255,0.55);
  }

  .footer-links h4,
  .footer-contact h4 {
    font-family: var(--font-heading);
    font-size: 16px;
    color: var(--color-white);
    margin-bottom: 20px;
  }

  .footer-links ul li {
    margin-bottom: 10px;
  }

  .footer-links ul li a {
    font-size: 14px;
    color: rgba(255,255,255,0.6);
    transition: color 0.2s;
    position: relative;
    padding-left: 12px;
  }

  .footer-links ul li a::before {
    content: '›';
    position: absolute;
    left: 0;
    color: var(--color-primary);
  }

  .footer-links ul li a:hover {
    color: var(--color-primary);
  }

  .contact-list li {
    display: flex;
    align-items: flex-start;
    gap: 10px;
    margin-bottom: 12px;
    font-size: 14px;
  }

  .contact-list li a {
    color: rgba(255,255,255,0.6);
    transition: color 0.2s;
  }
  .contact-list li a:hover { color: var(--color-primary); }
  .icon { font-size: 16px; flex-shrink: 0; margin-top: 2px; }

  .footer-bottom {
    padding: 20px 0;
  }

  .footer-bottom-inner {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 24px;
    flex-wrap: wrap;
  }

  .footer-bottom p {
    font-size: 13px;
    color: rgba(255,255,255,0.4);
  }

  .footer-nav {
    display: flex;
    gap: 20px;
    flex-wrap: wrap;
  }

  .footer-nav li a {
    font-size: 12px;
    color: rgba(255,255,255,0.4);
    text-transform: uppercase;
    letter-spacing: 0.5px;
    transition: color 0.2s;
  }
  .footer-nav li a:hover { color: var(--color-primary); }

  @media (max-width: 900px) {
    .footer-inner { grid-template-columns: 1fr 1fr; }
    .footer-brand { grid-column: 1 / -1; }
  }

  @media (max-width: 480px) {
    .footer-inner { grid-template-columns: 1fr; }
    .footer-bottom-inner { flex-direction: column; text-align: center; }
    .footer-nav { justify-content: center; }
  }
</style>
