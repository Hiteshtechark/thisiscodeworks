<script>
  import { page } from '$app/stores';
  import nav from '$lib/data/navigation.json';
  import homeData from '$lib/data/home.json';
</script>

<footer>
  <div class="footer-glow"></div>

  <section class="cta-section" style="background-image: linear-gradient(rgba(10, 10, 11, 0.7), rgba(10, 10, 11, 0.7)), url({homeData.cta.backgroundImage})">
    <div class="container">
      <div class="cta-card glass animate-fade-in">
        <div class="cta-content">
          {#if homeData.cta.label}
            <span class="prefix">{homeData.cta.label}</span>
          {/if}
          <h2 class="heading-gradient">{homeData.cta.heading}</h2>
          {#if homeData.cta.subheading}
            <p class="cta-description">{homeData.cta.subheading}</p>
          {/if}
        </div>
        
        <div class="cta-actions">
          <a href={homeData.cta.button.href} class="btn-premium">
            <span>{homeData.cta.button.label}</span>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="18" height="18" fill="currentColor">
              <path d="M504.3 273.6l-112.1 104c-6.992 6.484-17.18 8.218-25.94 4.406c-8.758-3.812-14.42-12.45-14.42-21.1L351.9 288H32C14.33 288 .0002 273.7 .0002 255.1S14.33 224 32 224h319.9l0-72c0-9.547 5.66-18.19 14.42-22c8.754-3.809 18.95-2.075 25.94 4.41l112.1 104C514.6 247.9 514.6 264.1 504.3 273.6z"></path>
            </svg>
          </a>
        </div>
      </div>
    </div>
  </section>

  <div class="footer-bottom">
    <div class="container footer-bottom-inner">
      <p>&copy; {new Date().getFullYear()} Codeworks Consulting. All Rights Reserved.</p>
      <ul class="footer-nav">
        {#each nav.links as link}
          <li>
            <a 
              href={link.href} 
              class:active={$page.url.pathname === link.href}
            >
              {link.label}
            </a>
          </li>
        {/each}
      </ul>
    </div>
  </div>
</footer>

<style>
  footer {
    background: linear-gradient(to bottom, #0a0a0b, #050506);
    color: var(--color-white);
    font-family: var(--font-body);
    position: relative;
    overflow: hidden;
    border-top: 1px solid rgba(255, 255, 255, 0.05);
  }

  .footer-glow {
    position: absolute;
    top: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 60%;
    height: 1px;
    background: linear-gradient(90deg, transparent, var(--color-primary), transparent);
    box-shadow: 0 0 20px var(--color-primary);
    opacity: 0.3;
  }

  .footer-top {
    padding: 100px 0 60px;
    position: relative;
    z-index: 2;
  }

  .footer-inner {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
  }


  .footer-links h4,
  .footer-contact h4 {
    font-family: var(--font-heading);
    font-size: 16px;
    font-weight: 800;
    color: var(--color-white);
    margin-bottom: 32px;
    text-transform: uppercase;
    letter-spacing: 3px;
    position: relative;
  }

  .footer-links h4::after,
  .footer-contact h4::after {
    content: '';
    position: absolute;
    bottom: -10px;
    left: 0;
    width: 30px;
    height: 2px;
    background: var(--color-primary);
  }

  .footer-links ul li {
    margin-bottom: 16px;
  }

  .footer-links ul li a {
    font-size: 15px;
    color: var(--color-text-muted);
    transition: var(--transition);
    display: inline-flex;
    align-items: center;
    gap: 12px;
  }

  .footer-links ul li a::before {
    content: '→';
    font-size: 12px;
    color: var(--color-primary);
    opacity: 0;
    transform: translateX(-10px);
    transition: var(--transition);
  }

  .footer-links ul li a:hover {
    color: var(--color-white);
    padding-left: 5px;
  }

  .footer-links ul li a:hover::before {
    opacity: 1;
    transform: translateX(0);
  }

  .contact-list li {
    display: flex;
    align-items: flex-start;
    gap: 16px;
    margin-bottom: 24px;
    font-size: 15px;
  }

  .contact-list li a, .address-link {
    color: var(--color-text-muted);
    transition: var(--transition);
    line-height: 1.6;
    text-decoration: none;
  }

  .contact-list li a:hover, .address-link:hover {
    color: var(--color-white);
  }

  .icon {
    font-size: 20px;
    color: var(--color-primary);
    margin-top: 2px;
  }

  .footer-bottom {
    padding: 32px 0;
    border-top: 1px solid rgba(255, 255, 255, 0.05);
    background: rgba(0, 0, 0, 0.2);
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
    opacity: 0.7;
  }

  .footer-nav {
    display: flex;
    gap: 32px;
  }

  .footer-nav li a {
    font-size: 13px;
    font-weight: 600;
    color: var(--color-text-muted);
    text-transform: uppercase;
    letter-spacing: 1px;
    transition: var(--transition);
  }

  .footer-nav li a.active {
    color: var(--color-primary);
  }

  .footer-nav li a:hover {
    color: var(--color-primary);
  }

  .cta-section {
    position: relative;
    padding: 100px 0;
    background-size: cover;
    background-position: center;
    overflow: hidden;
  }

  .cta-card {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 80px;
    border-radius: var(--radius-lg);
    position: relative;
    z-index: 2;
    gap: 60px;
    background: rgba(255, 255, 255, 0.03);
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.1);
  }

  .cta-content {
    flex: 1;
    text-align: left;
  }

  .prefix {
    display: inline-block;
    font-size: 14px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 4px;
    color: var(--color-primary);
    margin-bottom: 24px;
  }

  h2 {
    font-size: clamp(32px, 4vw, 48px);
    font-weight: 800;
    line-height: 1.1;
    margin-bottom: 24px;
    color: var(--color-white);
  }

  .cta-description {
    font-size: 18px;
    color: var(--color-text-muted);
    line-height: 1.7;
    max-width: 500px;
  }

  .btn-premium {
    display: inline-flex;
    align-items: center;
    gap: 16px;
    background: var(--color-primary);
    color: var(--color-white);
    padding: 20px 40px;
    border-radius: var(--radius-md);
    font-weight: 700;
    font-size: 16px;
    text-transform: uppercase;
    letter-spacing: 2px;
    transition: var(--transition);
    border: none;
    cursor: pointer;
    box-shadow: 0 10px 30px var(--color-primary-glow);
    white-space: nowrap;
    text-decoration: none;
  }

  .btn-premium:hover {
    transform: translateY(-5px);
    background: var(--color-white);
    color: var(--color-primary);
  }

  @media (max-width: 1024px) {
    .cta-card {
      flex-direction: column;
      text-align: center;
      padding: 60px 40px;
      gap: 40px;
    }

    .cta-content {
      text-align: center;
    }

    .cta-description {
      margin: 0 auto;
    }
  }

  @media (max-width: 640px) {
    .cta-card {
      padding: 40px 24px;
    }

    h2 {
      font-size: 28px;
    }
  }
</style>
