<script>
  export let data;
</script>

<section class="cta-section" style="background-image: url({data.backgroundImage})">
  <div class="cta-overlay"></div>
  <div class="container cta-wrapper">
    <div class="cta-card">
      {#if data.label}
        <span class="cta-label">{data.label}</span>
      {/if}
      <h2>{data.heading}</h2>
      {#if data.subheading}
        <p class="cta-subheading">{data.subheading}</p>
      {/if}
      <div class="cta-actions">
        <a href={data.button.href} class="btn btn-outline cta-btn">
          {data.button.label}
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="14" height="14" fill="currentColor"><path d="M504.3 273.6l-112.1 104c-6.992 6.484-17.18 8.218-25.94 4.406c-8.758-3.812-14.42-12.45-14.42-21.1L351.9 288H32C14.33 288 .0002 273.7 .0002 255.1S14.33 224 32 224h319.9l0-72c0-9.547 5.66-18.19 14.42-22c8.754-3.809 18.95-2.075 25.94 4.41l112.1 104C514.6 247.9 514.6 264.1 504.3 273.6z"></path></svg>
        </a>
      </div>
    </div>
  </div>
  {#if data.entityText}
    <div class="entity-bar">
      <div class="container">
        <p class="entity-text">{data.entityText}</p>
      </div>
    </div>
  {/if}
</section>

<style>
  .cta-section {
    position: relative;
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }

  .cta-overlay {
    position: absolute;
    inset: 0;
    background: rgba(0, 0, 0, 0.45);
    z-index: 1;
  }

  .cta-wrapper {
    position: relative;
    z-index: 2;
    padding: 60px 20px 80px;
  }

  .cta-card {
    background: linear-gradient(180deg, var(--color-bg-hero), var(--color-hero-teal));
    padding: 48px 56px;
    max-width: 680px;
    position: relative;
  }

  .cta-label {
    display: block;
    font-family: var(--font-body);
    font-size: 12px;
    font-weight: 700;
    letter-spacing: 2px;
    text-transform: uppercase;
    color: var(--color-primary);
    margin-bottom: 16px;
  }

  .cta-card h2 {
    font-family: var(--font-heading);
    font-size: 32px;
    font-weight: 700;
    line-height: 1.2;
    color: var(--color-white);
    margin-bottom: 14px;
    max-width: 460px;
  }

  .cta-subheading {
    font-family: var(--font-body);
    font-size: 14px;
    line-height: 1.6;
    color: rgba(255, 255, 255, 0.8);
    margin-bottom: 0;
  }

  .cta-actions {
    position: absolute;
    right: 56px;
    top: 50%;
    transform: translateY(-50%);
  }

  .cta-btn {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    background: transparent;
    color: var(--color-white);
    border: 2px solid var(--color-white);
    padding: 12px 28px;
    font-family: var(--font-body);
    font-weight: 700;
    font-size: 12px;
    text-transform: uppercase;
    letter-spacing: 1.5px;
    cursor: pointer;
    transition: all 0.3s ease;
    white-space: nowrap;
    text-decoration: none;
  }

  .cta-btn:hover {
    background: var(--color-white);
    color: var(--color-primary);
  }

  .entity-bar {
    position: relative;
    z-index: 2;
    padding: 30px 20px 40px;
    text-align: center;
  }

  .entity-text {
    font-family: var(--font-body);
    font-size: 14px;
    font-weight: 400;
    color: var(--color-primary);
    letter-spacing: 0.5px;
  }

  @media (max-width: 768px) {
    .cta-card {
      padding: 36px 28px;
      max-width: 100%;
    }

    .cta-actions {
      position: static;
      transform: none;
      margin-top: 24px;
    }

    .cta-card h2 {
      font-size: 26px;
      max-width: 100%;
    }

    .cta-wrapper {
      padding: 40px 20px 60px;
    }
  }
</style>
