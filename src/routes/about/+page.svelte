<script>
  const page = {
    title: 'About Us',
    hero: 'About Codeworks Consulting',
    description:
      'Learn about our story, our mission, and the team behind Codeworks Consulting.'
  };

  const highlights = [
    { label: 'Years of Experience', value: '10+' },
    { label: 'Team Members', value: '100+' },
    { label: 'Satisfied Customers', value: '98%' },
    { label: 'Projects Delivered', value: '1,000+' }
  ];
</script>

<svelte:head>
  <title>{page.title} | Codeworks Consulting</title>
  <meta name="description" content={page.description} />
</svelte:head>

<section class="page-hero">
  <div class="hero-bg"></div>
  <div class="container">
    <span class="section-label">CODEWORKS CONSULTING</span>
    <h1>{page.hero}</h1>
    <p>{page.description}</p>
  </div>
</section>

<section class="about-overview">
  <div class="container about-grid">
    <div class="about-media">
      <img src="/images/about.jpg" alt="Codeworks Consulting team" loading="lazy" />
    </div>
    <div>
      <h2>Bridging Technology And Innovation For Businesses</h2>
      <p>
        Codeworks Consulting is a technology-focused organization helping businesses build websites,
        web applications and mobile products with practical engineering and clear business outcomes.
      </p>
      <p>
        We work as long-term partners for our clients, combining design, development, QA and growth
        strategy to deliver solutions that are reliable, scalable and user-friendly.
      </p>
      <a href="/contact" class="btn btn-primary">Start A Project</a>
    </div>
  </div>
</section>

<section class="stats">
  <div class="container stats-grid">
    {#each highlights as stat}
      <div class="stat-card glass">
        <p class="stat-value">{stat.value}</p>
        <p class="stat-label-text">{stat.label}</p>
      </div>
    {/each}
  </div>
</section>

<style>
  .page-hero {
    position: relative;
    min-height: 360px;
    display: flex;
    align-items: flex-end;
    padding: 120px 0 56px;
    overflow: hidden;
  }

  .hero-bg {
    position: absolute;
    inset: 0;
    background: linear-gradient(135deg, #0a2e32 0%, #0d3d42 60%, #1a5a60 100%);
  }

  .page-hero .container {
    position: relative;
    z-index: 1;
  }

  .page-hero h1 {
    font-size: clamp(32px, 5vw, 56px);
    font-weight: 800;
    color: var(--color-white);
    margin-bottom: 16px;
    line-height: 1.2;
  }

  .page-hero p {
    font-size: 18px;
    color: rgba(255, 255, 255, 0.75);
    max-width: 560px;
  }

  .about-overview {
    padding: 100px 0;
    background: var(--color-bg-dark);
  }

  .about-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 56px;
    align-items: center;
  }

  .about-media img {
    border-radius: 8px;
    width: 100%;
    height: auto;
    box-shadow: var(--shadow-md);
  }

  .about-grid h2 {
    font-size: 38px;
    margin-bottom: 18px;
  }

  .about-grid p {
    color: var(--color-text-muted);
    line-height: 1.8;
    margin-bottom: 16px;
  }

  .stats {
    padding: 70px 0 90px;
    background: var(--color-bg-dark);
  }

  .stats-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 24px;
  }

  .stat-card {
    padding: 32px 20px;
    border-radius: var(--radius-md);
    text-align: center;
    transition: var(--transition);
  }

  .stat-card:hover {
    transform: translateY(-5px);
    background: rgba(255, 255, 255, 0.05);
    border-color: var(--color-primary);
  }

  .stat-value {
    color: var(--color-primary);
    font-family: var(--font-heading);
    font-size: 42px;
    font-weight: 700;
    line-height: 1;
    margin-bottom: 8px;
    text-shadow: 0 0 20px var(--color-primary-glow);
  }

  .stat-label-text {
    color: var(--color-text-muted);
    font-size: 14px;
    margin: 0;
  }

  @media (max-width: 980px) {
    .about-grid {
      grid-template-columns: 1fr;
    }

    .stats-grid {
      grid-template-columns: repeat(2, 1fr);
    }
  }

  @media (max-width: 560px) {
    .stats-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
