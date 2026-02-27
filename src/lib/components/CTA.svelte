<script>
  export let data;
</script>

<section class="cta-section" style="background-image: linear-gradient(rgba(10, 10, 11, 0.7), rgba(10, 10, 11, 0.7)), url({data.backgroundImage})">
  <div class="cta-glow"></div>
  <div class="container">
    <div class="cta-card glass animate-fade-in">
      <div class="cta-content">
        {#if data.label}
          <span class="prefix">{data.label}</span>
        {/if}
        <h2 class="heading-gradient">{data.heading}</h2>
        {#if data.subheading}
          <p class="cta-description">{data.subheading}</p>
        {/if}
      </div>
      
      <div class="cta-actions">
        <a href={data.button.href} class="btn-premium">
          <span>{data.button.label}</span>
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="18" height="18" fill="currentColor">
            <path d="M504.3 273.6l-112.1 104c-6.992 6.484-17.18 8.218-25.94 4.406c-8.758-3.812-14.42-12.45-14.42-21.1L351.9 288H32C14.33 288 .0002 273.7 .0002 255.1S14.33 224 32 224h319.9l0-72c0-9.547 5.66-18.19 14.42-22c8.754-3.809 18.95-2.075 25.94 4.41l112.1 104C514.6 247.9 514.6 264.1 504.3 273.6z"></path>
          </svg>
        </a>
      </div>
    </div>
  </div>

</section>

<style>
  .cta-section {
    position: relative;
    padding: 100px 0;
    background-size: cover;
    background-position: center;
    overflow: hidden;
  }

  .cta-glow {
    position: absolute;
    bottom: -20%;
    left: 50%;
    transform: translateX(-50%);
    width: 80%;
    height: 60%;
    background: radial-gradient(circle at center, var(--color-primary-glow) 0%, transparent 70%);
    pointer-events: none;
    z-index: 1;
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
  }

  .cta-content {
    flex: 1;
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
