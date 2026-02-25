<script>
  export let data;

  const splitValueAndSuffix = (value) => {
    const trimmed = String(value).trim();
    const match = trimmed.match(/^([\d,]+)(.*)$/);

    if (!match) {
      return { number: trimmed, suffix: '' };
    }

    return {
      number: match[1],
      suffix: match[2]
    };
  };
</script>

<section class="hero-section" aria-label="Homepage hero">
  <div class="section-background" aria-hidden="true"></div>

  <div class="hero-grid">
    <div class="hero-block content-block">
      <div class="block-inner">
      <span class="prefix">{data.prefix}</span>
      <h1>{data.heading}</h1>
      <p class="description">{data.description}</p>
      <div class="actions">
        <a href={data.cta.href} class="btn btn-primary hero-cta">
          {data.cta.label}
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="16" height="16" fill="currentColor"><path d="M504.3 273.6l-112.1 104c-6.992 6.484-17.18 8.218-25.94 4.406c-8.758-3.812-14.42-12.45-14.42-21.1L351.9 288H32C14.33 288 .0002 273.7 .0002 255.1S14.33 224 32 224h319.9l0-72c0-9.547 5.66-18.19 14.42-22c8.754-3.809 18.95-2.075 25.94 4.41l112.1 104C514.6 247.9 514.6 264.1 504.3 273.6z"></path></svg>
        </a>
      </div>
    </div>
    </div>

    <div class="hero-block hero-bg" style="background-image: url({data.image})" aria-hidden="true"></div>

    <div class="hero-block thumb-block">
      <img src={data.secondaryImage} alt="Discover" />
    </div>

    <div class="hero-block stats-block">
      <div class="stats-grid">
        {#each data.stats as stat}
          {@const parts = splitValueAndSuffix(stat.value)}
          <div class="stat-item">
            <div class="stat-number">
              <span class="value">{parts.number}</span><span class="suffix">{parts.suffix}</span>
            </div>
            <p class="stat-label">{stat.label}</p>
          </div>
        {/each}
      </div>
    </div>
  </div>
</section>

<style>
  .hero-section {
    position: relative;
    width: 100%;
    overflow: hidden;
  }

  .section-background {
    position: absolute;
    inset: 0;
    background: linear-gradient(rgba(7, 38, 42, 0.9), rgba(7, 38, 42, 0.9)), url('/images/hero_bg.jpg');
    background-size: cover;
    background-position: center;
    z-index: 0;
  }

  .hero-grid {
    display: grid !important;
    grid-template-columns: 1fr 1fr;
    grid-template-rows: auto auto;
    max-width: var(--max-width);
    width: 100%;
    margin: 0 auto;
    padding: 0 20px 90px;
    align-items: stretch;
    position: relative;
    z-index: 1;
    min-height: 760px;
    gap: 0;
  }

  .hero-block {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .content-block {
    background: linear-gradient(180deg,var(--color-bg-hero),var(--color-hero-teal));
    color: var(--color-white) !important;
    padding: 100px 56px;
    display: flex;
    align-items: flex-start;
    justify-content: flex-start;
    min-height: 510px;
  }

  .block-inner {
    max-width: 580px;
    width: 100%;
  }

  .prefix {
    display: block;
    font-family: var(--font-body);
    font-size: 16px;
    font-weight: 400;
    text-transform: uppercase;
    letter-spacing: 2px;
    margin-bottom: 20px;
    opacity: 0.9;
  }

  h1 {
    font-family: var(--font-heading);
    font-size: clamp(34px, 5vw, 56px);
    font-weight: 700;
    line-height: 1.12;
    margin-bottom: 20px;
    color: var(--color-white) !important;
    letter-spacing: -0.5px;
  }

  .description {
    font-family: var(--font-body);
    font-size: 16px;
    line-height: 1.6;
    margin-bottom: 35px;
    opacity: 0.95;
    max-width: 500px;
  }

  .actions .btn {
    gap: 12px;
    padding: 16px 34px;
    background: var(--color-primary);
    border-radius: 6px;
    font-size: 16px;
    display: inline-flex;
    align-items: center;
    text-decoration: none;
    color: white !important;
    text-transform: uppercase;
    font-weight: 800;
    letter-spacing: 1px;
  }

  .hero-cta svg { margin-left: 8px; }

  .suffix {
    margin-left: 6px;
  }

  .hero-bg {
    grid-column: 2 / 3;
    grid-row: 1 / 2;
    min-height: 510px;
    background-size: cover;
    background-position: center right;
    z-index: 2;
  }

  .thumb-block {
    grid-column: 1 / 2;
    grid-row: 2 / 3;
    padding-top: 28px;
    justify-content: flex-start;
    z-index: 2;
  }

  .thumb-block img {
    width: 86%;
    max-width: 560px;
    border-radius: 2px;
    box-shadow: var(--shadow-sm);
  }

  .stats-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 28px 36px;
    width: 100%;
    max-width: 620px;
  }

  .stat-item {
    display: flex;
    flex-direction: column;
  }

  .stat-number {
    font-family: var(--font-heading);
    font-size: 42px;
    font-weight: 700;
    line-height: 1;
    margin-bottom: 10px;
  }

  .stats-block {
    grid-column: 2 / 3;
    grid-row: 2 / 3;
    justify-content: flex-start;
    align-items: flex-start;
    width: 100%;
    background: linear-gradient(180deg, var(--color-bg-hero), var(--color-hero-teal));
    padding: 40px 42px;
    border-radius: 0;
    box-shadow: none;
    color: var(--color-white) !important;
    z-index: 3;
  }

  .stat-label {
    font-family: var(--font-body);
    font-size: 16px;
    font-weight: 400;
    opacity: 0.8;
  }

  @media (max-width: 991px) {
    .hero-grid {
      grid-template-columns: 1fr;
      padding: 0 16px 48px;
      min-height: unset;
    }

    .content-block {
      min-height: unset;
      padding: 56px 24px;
    }

    .hero-bg {
      grid-column: 1 / 2;
      grid-row: 2 / 3;
      min-height: 260px;
    }

    .thumb-block {
      grid-column: 1 / 2;
      grid-row: 3 / 4;
      padding-top: 16px;
    }

    .thumb-block img {
      width: 100%;
      max-width: none;
    }

    .stats-block {
      grid-column: 1 / 2;
      grid-row: 4 / 5;
      padding: 28px 24px;
    }

    .stats-grid {
      max-width: none;
    }

    h1 { font-size: 32px; }
  }

  @media (max-width: 640px) {
    .stats-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
