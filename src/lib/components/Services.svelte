<script>
  export let data;
</script>

<section
  class="services-section"
  style="background-image: linear-gradient(rgba(10, 10, 11, 0.9), rgba(10, 10, 11, 0.95)), url({data.backgroundImage});"
>
  <div class="container">
    <div class="services-header animate-fade-in">
      {#if data.sectionLabel}
        <span class="prefix">{data.sectionLabel}</span>
      {/if}
      <h2 class="heading-gradient">{data.heading}</h2>
      <p class="section-sub">{data.subheading}</p>
    </div>

    <div class="services-grid">
      <div class="services-list animate-fade-in">
        {#each data.items as service, i}
          <div class="service-card glass" style="animation-delay: {i * 0.1}s">
            <div class="service-icon glow-text">{service.icon}</div>
            <div class="service-info">
              <h3>{service.title}</h3>
              <p>Tailored solutions driving exceptional digital transformations.</p>
            </div>
          </div>
        {/each}
      </div>

      <div class="services-cta animate-fade-in" style="animation-delay: 0.4s">
        <div class="cta-inner glass">
          <h3>Ready to elevate your digital presence?</h3>
          <p>Our strategic approach ensures your brand stands out in the modern landscape.</p>
          <a href="/services" class="btn-premium">
            <span>EXPLORE ALL SERVICES</span>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="16" height="16" fill="currentColor">
              <path d="M504.3 273.6l-112.1 104c-6.992 6.484-17.18 8.218-25.94 4.406c-8.758-3.812-14.42-12.45-14.42-21.1L351.9 288H32C14.33 288 .0002 273.7 .0002 255.1S14.33 224 32 224h319.9l0-72c0-9.547 5.66-18.19 14.42-22c8.754-3.809 18.95-2.075 25.94 4.41l112.1 104C514.6 247.9 514.6 264.1 504.3 273.6z"></path>
            </svg>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<style>
  .services-section {
    padding: 120px 0;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
  }

  .services-header {
    text-align: center;
    max-width: 800px;
    margin: 0 auto 80px;
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
    font-size: clamp(32px, 5vw, 56px);
    font-weight: 800;
    margin-bottom: 24px;
    line-height: 1.1;
  }

  .section-sub {
    font-size: 18px;
    color: var(--color-text-muted);
    line-height: 1.7;
  }

  .services-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 40px;
    align-items: start;
  }

  .services-list {
    display: flex;
    flex-direction: column;
    gap: 20px;
  }

  .service-card {
    display: flex;
    align-items: center;
    gap: 32px;
    padding: 40px;
    border-radius: var(--radius-md);
    transition: var(--transition);
    cursor: pointer;
  }

  .service-card:hover {
    background: rgba(255, 255, 255, 0.05);
    transform: translateX(10px);
    border-color: var(--color-primary);
  }

  .service-icon {
    font-size: 40px;
    font-weight: 800;
    min-width: 60px;
  }

  .service-info h3 {
    font-size: 24px;
    font-weight: 700;
    margin-bottom: 8px;
    color: var(--color-white);
  }

  .service-info p {
    font-size: 15px;
    color: var(--color-text-muted);
    line-height: 1.6;
  }

  .services-cta {
    position: sticky;
    top: 140px;
  }

  .cta-inner {
    padding: 60px;
    border-radius: var(--radius-lg);
    text-align: center;
  }

  .cta-inner h3 {
    font-size: 32px;
    font-weight: 800;
    margin-bottom: 24px;
    line-height: 1.2;
    color: var(--color-white);
  }

  .cta-inner p {
    font-size: 16px;
    color: var(--color-text-muted);
    margin-bottom: 40px;
    line-height: 1.7;
  }

  .btn-premium {
    display: inline-flex;
    align-items: center;
    gap: 16px;
    background: var(--color-primary);
    color: var(--color-white);
    padding: 18px 32px;
    border-radius: var(--radius-sm);
    font-weight: 700;
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: 2px;
    transition: var(--transition);
    border: none;
    cursor: pointer;
    box-shadow: 0 10px 30px var(--color-primary-glow);
  }

  .btn-premium:hover {
    transform: translateY(-3px);
    background: var(--color-white);
    color: var(--color-primary);
  }

  @media (max-width: 1024px) {
    .services-grid {
      grid-template-columns: 1fr;
    }

    .services-cta {
      position: static;
    }
  }

  @media (max-width: 640px) {
    .service-card {
      padding: 24px;
      gap: 20px;
    }

    .service-icon {
      font-size: 32px;
      min-width: 40px;
    }

    .cta-inner {
      padding: 40px 24px;
    }
  }
</style>
