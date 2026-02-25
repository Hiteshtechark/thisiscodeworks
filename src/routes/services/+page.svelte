<script>
  const page = {
    title: 'Our Services',
    hero: 'What We Offer',
    description: 'Explore our comprehensive range of IT and digital services.'
  };

  const services = [
    {
      title: 'Website Development',
      text: 'Customized business websites built for speed, conversion and long-term maintainability.'
    },
    {
      title: 'Mobile App Development',
      text: 'Native and cross-platform mobile applications with intuitive UI and robust backend integration.'
    },
    {
      title: 'Web Application Development',
      text: 'Scalable web products crafted with clean architecture, strong performance and secure foundations.'
    },
    {
      title: 'Digital Marketing',
      text: 'Channel-specific campaigns designed to improve brand visibility and bring measurable growth.'
    },
    {
      title: 'SEO Services',
      text: 'Technical SEO, on-page optimization and content planning to improve ranking and traffic quality.'
    },
    {
      title: 'Support & Maintenance',
      text: 'Continuous improvements, bug fixes and proactive support to keep your platforms reliable.'
    }
  ];
</script>

<svelte:head>
  <title>{page.title} | Codeworks Consulting</title>
  <meta name="description" content={page.description} />
</svelte:head>

<section class="page-hero">
  <div class="hero-bg"></div>
  <div class="container">
    <span class="section-label">WHAT WE OFFER</span>
    <h1>{page.hero}</h1>
    <p>{page.description}</p>
  </div>
</section>

<section class="services-list">
  <div class="container">
    <div class="section-intro">
      <h2>Comprehensive Digital Services For Modern Businesses</h2>
      <p>
        We combine strategy, design and engineering to build products that support real business
        objectives.
      </p>
    </div>

    <div class="grid">
      {#each services as service, index}
        <article class="card">
          <span class="index">{String(index + 1).padStart(2, '0')}</span>
          <h3>{service.title}</h3>
          <p>{service.text}</p>
        </article>
      {/each}
    </div>
  </div>
</section>

<section class="service-cta">
  <div class="container cta-inner">
    <div>
      <h2>Need a tailored solution?</h2>
      <p>Tell us your goals and we will map the right technology approach.</p>
    </div>
    <a class="btn btn-primary" href="/contact">Talk To Us</a>
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

  .services-list {
    padding: 90px 0;
  }

  .section-intro {
    text-align: center;
    max-width: 820px;
    margin: 0 auto 52px;
  }

  .section-intro h2 {
    font-size: 38px;
    margin-bottom: 14px;
  }

  .section-intro p {
    color: var(--color-text-muted);
  }

  .grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 22px;
  }

  .card {
    background: var(--color-bg-light);
    border: 1px solid var(--color-border);
    border-radius: 8px;
    padding: 30px;
  }

  .index {
    display: inline-block;
    color: var(--color-primary);
    font-family: var(--font-heading);
    font-size: 26px;
    margin-bottom: 10px;
  }

  .card h3 {
    font-size: 24px;
    margin-bottom: 10px;
  }

  .card p {
    color: var(--color-text-muted);
    line-height: 1.8;
  }

  .service-cta {
    background: var(--color-bg-light);
    padding: 70px 0;
    border-top: 1px solid var(--color-border);
  }

  .cta-inner {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
  }

  .cta-inner h2 {
    font-size: 34px;
    margin-bottom: 8px;
  }

  .cta-inner p {
    color: var(--color-text-muted);
  }

  @media (max-width: 980px) {
    .grid {
      grid-template-columns: repeat(2, 1fr);
    }
  }

  @media (max-width: 700px) {
    .grid {
      grid-template-columns: 1fr;
    }

    .cta-inner {
      flex-direction: column;
      align-items: flex-start;
    }
  }
</style>
