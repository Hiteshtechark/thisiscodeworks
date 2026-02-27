<script>
  const page = {
    title: 'Contact Us',
    hero: 'Get In Touch',
    description: "Have a project in mind? Let's talk. We'd love to hear from you."
  };
</script>

<svelte:head>
  <title>{page.title} | Codeworks Consulting</title>
  <meta name="description" content={page.description} />
</svelte:head>

<section class="page-hero">
  <div class="hero-bg"></div>
  <div class="container">
    <span class="section-label">REACH OUT</span>
    <h1>{page.hero}</h1>
    <p>{page.description}</p>
  </div>
</section>

<section class="contact-section">
  <div class="container contact-grid">
    <div class="contact-card glass">
      <h2>Contact Information</h2>
      <p>Share your requirements and our team will respond shortly.</p>

      <div class="info-item">
        <h3>Email</h3>
        <a href="mailto:hr.codeworksconsulting@gmail.com">hr.codeworksconsulting@gmail.com</a>
      </div>

      <div class="info-item">
        <h3>Address</h3>
        <p>806-807 Trinity Orion, Besides Jolly Residency, Vesu, Surat 395007</p>
      </div>

      <div class="info-item">
        <h3>Connected Entity</h3>
        <p>TechArk</p>
      </div>
    </div>

    <form class="contact-form glass" on:submit|preventDefault>
      <h2>Send A Message</h2>
      <label>
        Full Name
        <input type="text" placeholder="Your name" required />
      </label>
      <label>
        Email
        <input type="email" placeholder="you@example.com" required />
      </label>
      <label>
        Subject
        <input type="text" placeholder="Project inquiry" required />
      </label>
      <label>
        Message
        <textarea rows="5" placeholder="Tell us about your project"></textarea>
      </label>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
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

  .contact-section {
    padding: 100px 0;
    background: var(--color-bg-dark);
    position: relative;
  }

  .contact-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 30px;
  }

  .contact-card,
  .contact-form {
    padding: 40px;
    border-radius: var(--radius-md);
    transition: var(--transition);
  }

  .contact-card:hover,
  .contact-form:hover {
    border-color: var(--color-primary);
    background: rgba(255, 255, 255, 0.05);
  }

  h2 {
    font-size: 32px;
    margin-bottom: 12px;
  }

  .contact-card > p {
    color: var(--color-text-muted);
    margin-bottom: 20px;
  }

  .info-item {
    border-top: 1px solid var(--color-border);
    padding-top: 16px;
    margin-top: 16px;
  }

  .info-item h3 {
    font-size: 18px;
    margin-bottom: 6px;
  }

  .info-item p,
  .info-item a {
    color: var(--color-text-muted);
    word-break: break-word;
  }

  .contact-form {
    display: grid;
    gap: 12px;
    align-content: start;
  }

  label {
    display: grid;
    gap: 12px;
    font-weight: 700;
    font-size: 14px;
    color: var(--color-white);
    margin-bottom: 8px;
  }

  input,
  textarea {
    background: rgba(255, 255, 255, 0.03);
    border: 1px solid rgba(255, 255, 255, 0.1);
    border-radius: var(--radius-sm);
    padding: 14px 16px;
    font: inherit;
    color: var(--color-white);
    transition: var(--transition);
  }

  input:focus,
  textarea:focus {
    outline: none;
    border-color: var(--color-primary);
    background: rgba(255, 255, 255, 0.05);
    box-shadow: 0 0 15px var(--color-primary-glow);
  }

  textarea {
    resize: vertical;
  }

  @media (max-width: 900px) {
    .contact-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
