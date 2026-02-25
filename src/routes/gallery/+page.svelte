<script>
  const page = {
    title: 'Gallery',
    hero: 'Our Work In Action',
    description: 'Browse through our portfolio of completed projects and team moments.'
  };

  const images = [
    '/images/pexels-photo-1181271.jpeg',
    '/images/pexels-photo-16129700.jpeg',
    '/images/about.jpg',
    '/images/journey.jpg',
    '/images/hero_bg.jpg',
    '/images/logo.png'
  ];
</script>

<svelte:head>
  <title>{page.title} | Codeworks Consulting</title>
  <meta name="description" content={page.description} />
</svelte:head>

<section class="page-hero">
  <div class="hero-bg"></div>
  <div class="container">
    <span class="section-label">OUR PORTFOLIO</span>
    <h1>{page.hero}</h1>
    <p>{page.description}</p>
  </div>
</section>

<section class="gallery-section">
  <div class="container">
    <div class="intro">
      <h2>Snapshots From Our Projects</h2>
      <p>Design, development and delivery moments from our digital work.</p>
    </div>

    <div class="gallery-grid">
      {#each images as image, index}
        <figure class="gallery-item" style={`animation-delay: ${index * 80}ms`}>
          <img src={image} alt={`Gallery image ${index + 1}`} loading="lazy" />
        </figure>
      {/each}
    </div>
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

  .gallery-section {
    padding: 90px 0;
  }

  .intro {
    text-align: center;
    margin-bottom: 42px;
  }

  .intro h2 {
    font-size: 38px;
    margin-bottom: 10px;
  }

  .intro p {
    color: var(--color-text-muted);
  }

  .gallery-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 18px;
  }

  .gallery-item {
    margin: 0;
    border-radius: 10px;
    overflow: hidden;
    border: 1px solid var(--color-border);
    background: var(--color-bg-light);
    animation: fadeInUp 0.5s ease both;
  }

  .gallery-item img {
    width: 100%;
    height: 260px;
    object-fit: cover;
    transition: transform 0.35s ease;
  }

  .gallery-item:hover img {
    transform: scale(1.04);
  }

  @keyframes fadeInUp {
    from {
      opacity: 0;
      transform: translateY(14px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  @media (max-width: 900px) {
    .gallery-grid {
      grid-template-columns: repeat(2, 1fr);
    }
  }

  @media (max-width: 620px) {
    .gallery-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
