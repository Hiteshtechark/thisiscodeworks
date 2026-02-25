<script>
  export let data;
</script>

<section
  class="services"
  style="background-image: linear-gradient(rgba(16, 24, 30, 0.2), rgba(16, 24, 30, 0.2)), url({data.backgroundImage});"
>
  <div class="container services-shell">
    <div class="services-panel">
      <div class="services-list">
        {#each data.items as service}
          <div class="service-row">
            <span class="service-number">{service.icon}</span>
            <h3>{service.title}</h3>
          </div>
        {/each}
      </div>

      <div class="services-content">
        <span class="section-label">{data.sectionLabel}</span>
        <h2 class="section-heading">{data.heading}</h2>
        <p class="section-sub">{data.subheading}</p>

        <a href="/services" class="btn btn-outline read-more">
          READ MORE
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="14" height="14" fill="currentColor" aria-hidden="true"><path d="M504.3 273.6l-112.1 104c-6.992 6.484-17.18 8.218-25.94 4.406c-8.758-3.812-14.42-12.45-14.42-21.1L351.9 288H32C14.33 288 .0002 273.7 .0002 255.1S14.33 224 32 224h319.9l0-72c0-9.547 5.66-18.19 14.42-22c8.754-3.809 18.95-2.075 25.94 4.41l112.1 104C514.6 247.9 514.6 264.1 504.3 273.6z"></path></svg>
        </a>
      </div>
    </div>
  </div>
</section>

<style>
  .services {
    padding: 72px 0 0;
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }

  .services-shell {
    min-height: 700px;
    display: flex;
    align-items: flex-end;
  }

  .services-panel {
    width: 100%;
    display: grid;
    grid-template-columns: 1fr 1fr;
    background: #ececec;
  }

  .services-list {
    border-right: 1px solid #9cc8db;
  }

  .service-row {
    min-height: 190px;
    display: flex;
    align-items: center;
    gap: 24px;
    padding: 24px 56px;
    border-bottom: 1px solid #9cc8db;
  }

  .service-row:last-child {
    border-bottom: none;
  }

  .service-number {
    font-family: var(--font-body);
    font-size: 34px;
    color: #161616;
    min-width: 42px;
  }

  .service-row h3 {
    font-family: var(--font-heading);
    font-size: clamp(34px, 2vw, 44px);
    color: #141414;
    line-height: 1.2;
    font-weight: 600;
  }

  .services-content {
    padding: 90px 76px;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }

  .section-label {
    font-size: 14px;
    letter-spacing: 0.8px;
    text-transform: uppercase;
    margin-bottom: 18px;
    color: #121212;
  }

  .section-heading {
    font-family: var(--font-heading);
    font-size: clamp(44px, 3.1vw, 60px);
    line-height: 1.15;
    color: #121212;
    margin-bottom: 24px;
  }

  .section-sub {
    font-size: 16px;
    line-height: 1.6;
    color: #1f1f1f;
    max-width: 620px;
    margin-bottom: 36px;
  }

  .read-more {
    color: #2b7f9b;
    border-color: #2b7f9b;
    width: fit-content;
    gap: 10px;
    font-size: 14px;
    padding: 14px 30px;
  }

  .read-more:hover {
    background: #2b7f9b;
    color: #ffffff;
  }

  @media (max-width: 1200px) {
    .service-row {
      min-height: 140px;
      padding: 20px 28px;
    }

    .services-content {
      padding: 46px 32px;
    }

    .service-row h3 {
      font-size: clamp(20px, 2vw, 32px);
    }

    .section-label {
      font-size: 14px;
    }

    .section-heading {
      font-size: clamp(30px, 3vw, 44px);
    }

    .section-sub {
      font-size: 18px;
    }

    .read-more {
      font-size: 16px;
      padding: 12px 24px;
    }
  }

  @media (max-width: 900px) {
    .services {
      padding: 54px 0;
    }

    .services-shell {
      min-height: auto;
    }

    .services-panel {
      grid-template-columns: 1fr;
    }

    .services-list {
      border-right: none;
      border-bottom: 1px solid #9cc8db;
    }

    .service-row {
      min-height: auto;
    }

    .services-content {
      padding: 36px 24px;
    }
  }
</style>
