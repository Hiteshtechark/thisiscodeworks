<script>
  const page = {
    title: 'Careers',
    hero: 'Join Our Team',
    description: "We're always looking for talented individuals to join our growing team."
  };

  const benefits = [
    'Work on real client products with modern tech stacks.',
    'Collaborative team culture with mentorship and ownership.',
    'Learning-focused environment with growth opportunities.',
    'Flexible and performance-driven work process.'
  ];

  const roles = [
    { title: 'Frontend Developer', type: 'Full-time', location: 'Surat / Remote' },
    { title: 'Backend Developer', type: 'Full-time', location: 'Surat / Remote' },
    { title: 'QA Engineer', type: 'Full-time', location: 'Surat' },
    { title: 'Digital Marketing Executive', type: 'Full-time', location: 'Surat' }
  ];
</script>

<svelte:head>
  <title>{page.title} | Codeworks Consulting</title>
  <meta name="description" content={page.description} />
</svelte:head>

<section class="page-hero">
  <div class="hero-bg"></div>
  <div class="container">
    <span class="section-label">WORK WITH US</span>
    <h1>{page.hero}</h1>
    <p>{page.description}</p>
  </div>
</section>

<section class="career-content">
  <div class="container career-grid">
    <div>
      <h2>Build Your Career With Codeworks</h2>
      <p>
        We are building a team that values quality engineering, problem solving and consistent learning.
        If you enjoy turning ideas into high-impact digital products, we would like to hear from you.
      </p>
      <ul>
        {#each benefits as benefit}
          <li>{benefit}</li>
        {/each}
      </ul>
    </div>

    <div class="jobs-panel">
      <h3>Open Roles</h3>
      {#each roles as role}
        <article class="job-item">
          <h4>{role.title}</h4>
          <p>{role.type} · {role.location}</p>
        </article>
      {/each}
      <a href="mailto:hr.codeworksconsulting@gmail.com" class="btn btn-primary">Apply Now</a>
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

  .career-content {
    padding: 90px 0;
  }

  .career-grid {
    display: grid;
    grid-template-columns: 1.25fr 1fr;
    gap: 34px;
  }

  h2 {
    font-size: 38px;
    margin-bottom: 14px;
  }

  .career-content p {
    color: var(--color-text-muted);
    line-height: 1.8;
    margin-bottom: 18px;
  }

  ul {
    list-style: disc;
    padding-left: 22px;
  }

  li {
    margin-bottom: 10px;
    color: var(--color-text-muted);
  }

  .jobs-panel {
    background: var(--color-bg-light);
    border: 1px solid var(--color-border);
    border-radius: 8px;
    padding: 28px;
  }

  .jobs-panel h3 {
    font-size: 26px;
    margin-bottom: 16px;
  }

  .job-item {
    padding: 16px 0;
    border-bottom: 1px solid var(--color-border);
  }

  .job-item:last-of-type {
    margin-bottom: 24px;
  }

  .job-item h4 {
    font-size: 19px;
    margin-bottom: 4px;
  }

  .job-item p {
    margin: 0;
    font-size: 14px;
  }

  @media (max-width: 900px) {
    .career-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
