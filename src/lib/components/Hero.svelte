<script>
  import Counter from './Counter.svelte';
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
  <div class="hero-bg-overlay"></div>
  <div class="section-background" aria-hidden="true"></div>

  <div class="container hero-container">
    <div class="hero-content animate-fade-in">
      {#if data.prefix}
        <span class="prefix">{data.prefix}</span>
      {/if}
      <h1 class="heading-gradient">{data.heading}</h1>
      <p class="description">{data.description}</p>
      
      <div class="actions">
        <a href={data.cta.href} class="btn-premium">
          <span>{data.cta.label}</span>
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="18" height="18" fill="currentColor">
            <path d="M504.3 273.6l-112.1 104c-6.992 6.484-17.18 8.218-25.94 4.406c-8.758-3.812-14.42-12.45-14.42-21.1L351.9 288H32C14.33 288 .0002 273.7 .0002 255.1S14.33 224 32 224h319.9l0-72c0-9.547 5.66-18.19 14.42-22c8.754-3.809 18.95-2.075 25.94 4.41l112.1 104C514.6 247.9 514.6 264.1 504.3 273.6z"></path>
          </svg>
        </a>
      </div>

      <div class="stats-premium">
        {#each data.stats as stat}
          {@const parts = splitValueAndSuffix(stat.value)}
          <div class="stat-card glass">
            <div class="stat-number glow-text">
              <Counter value={parts.number} suffix={parts.suffix} />
            </div>
            <p class="stat-label">{stat.label}</p>
          </div>
        {/each}
      </div>
    </div>

    <div class="hero-visual animate-fade-in" style="animation-delay: 0.2s">
      <div class="image-wrapper glass">
        <img src={data.secondaryImage} alt="Strategic Design" class="hero-image" />
        <div class="image-glow"></div>
      </div>
    </div>
  </div>
</section>

<style>
  .hero-section {
    position: relative;
    padding: 120px 0 80px;
    min-height: 100vh;
    display: flex;
    align-items: center;
    overflow: hidden;
  }

  .hero-bg-overlay {
    position: absolute;
    inset: 0;
    background: radial-gradient(circle at 20% 30%, rgba(26, 173, 180, 0.15) 0%, transparent 50%),
                radial-gradient(circle at 80% 70%, rgba(12, 81, 90, 0.2) 0%, transparent 50%);
    z-index: 1;
  }

  .section-background {
    position: absolute;
    inset: 0;
    background-image: linear-gradient(rgba(10, 10, 11, 0.8), rgba(10, 10, 11, 0.8)), 
                      url('https://thisiscodeworks.com/wp-content/uploads/2024/12/pexels-photo-270637.jpeg');
    background-size: cover;
    background-position: center;
    z-index: 0;
    transform: scale(1.05); /* Soft zoom for texture */
  }

  .hero-container {
    position: relative;
    z-index: 2;
    display: grid;
    grid-template-columns: 1.2fr 0.8fr;
    gap: 60px;
    align-items: center;
  }

  .hero-content {
    max-width: 720px;
  }

  .prefix {
    display: inline-block;
    font-size: 14px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 4px;
    color: var(--color-primary);
    margin-bottom: 24px;
    position: relative;
    padding-left: 50px;
  }

  .prefix::before {
    content: '';
    position: absolute;
    left: 0;
    top: 50%;
    width: 40px;
    height: 1px;
    background: var(--color-primary);
  }

  h1 {
    font-size: clamp(40px, 6vw, 72px);
    font-weight: 800;
    line-height: 1.1;
    margin-bottom: 24px;
    letter-spacing: -0.02em;
  }

  .description {
    font-size: 18px;
    line-height: 1.7;
    color: var(--color-text-muted);
    margin-bottom: 48px;
    max-width: 580px;
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
  }

  .btn-premium:hover {
    transform: translateY(-5px);
    background: var(--color-white);
    color: var(--color-primary);
    box-shadow: 0 15px 40px rgba(255, 255, 255, 0.2);
  }

  .stats-premium {
    margin-top: 80px;
    display: flex;
    gap: 32px;
  }

  .stat-card {
    padding: 24px 32px;
    border-radius: var(--radius-md);
    flex: 1;
    min-width: 160px;
  }

  .stat-number {
    font-size: 40px;
    font-weight: 800;
    color: var(--color-white);
    margin-bottom: 4px;
  }

  .stat-label {
    font-size: 14px;
    font-weight: 500;
    color: var(--color-text-muted);
    text-transform: uppercase;
    letter-spacing: 1px;
  }

  .hero-visual {
    position: relative;
    display: flex;
    justify-content: center;
  }

  .image-wrapper {
    position: relative;
    padding: 12px;
    border-radius: var(--radius-lg);
    overflow: hidden;
    transform: perspective(1000px) rotateY(-5deg);
    transition: var(--transition);
  }

  .image-wrapper:hover {
    transform: perspective(1000px) rotateY(0deg);
  }

  .hero-image {
    width: 100%;
    aspect-ratio: 4/5;
    object-fit: cover;
    border-radius: calc(var(--radius-lg) - 8px);
    display: block;
  }

  .image-glow {
    position: absolute;
    inset: -20%;
    background: radial-gradient(circle at center, var(--color-primary-glow) 0%, transparent 70%);
    pointer-events: none;
    opacity: 0.5;
  }

  @media (max-width: 1024px) {
    .hero-container {
      grid-template-columns: 1fr;
      text-align: center;
      gap: 80px;
    }

    .hero-content {
      margin: 0 auto;
    }

    .description {
      margin-left: auto;
      margin-right: auto;
    }

    .prefix {
      padding-left: 0;
    }

    .prefix::before {
      display: none;
    }

    .stats-premium {
      justify-content: center;
      flex-wrap: wrap;
    }
  }

  @media (max-width: 640px) {
    .stats-premium {
      gap: 16px;
    }
    
    .stat-card {
      padding: 16px;
    }

    h1 {
      font-size: 36px;
    }
  }
</style>
