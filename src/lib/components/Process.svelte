<script>
  export let data;
</script>

<section class="process">
  <div class="container">
    <div class="section-header">
      <span class="section-label">{data.sectionLabel}</span>
      <h2 class="section-heading">{data.heading}</h2>
      {#if data.subheading}
        <p class="section-sub">{data.subheading}</p>
      {/if}
    </div>

    <div class="steps-grid">
      {#each data.steps as step}
        <div class="step-card">
          <div class="step-number-wrap">
            <span class="step-label">Step</span>
            <div class="step-number">{step.number}</div>
          </div>
          <h3>{step.title}</h3>
          <p>{step.description}</p>
        </div>
      {/each}
    </div>
  </div>
</section>

<style>
  .process {
    padding: 100px 0;
    background: var(--color-bg-light);
  }

  .section-header {
    text-align: center;
    max-width: 800px;
    margin: 0 auto 64px;
  }

  .section-label {
    display: block;
    font-size: 14px;
    color: var(--color-primary);
    margin-bottom: 12px;
    text-transform: uppercase;
    font-weight: 700;
  }

  .section-heading {
    font-family: var(--font-heading);
    font-size: 36px;
    font-weight: 700;
    line-height: 1.2;
    margin-bottom: 20px;
    color: var(--color-black);
  }

  .section-sub {
    color: var(--color-text-muted);
    font-size: 16px;
    line-height: 1.6;
  }

  .steps-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 40px;
  }

  .step-card {
    text-align: center;
  }

  .step-number-wrap {
    margin-bottom: 24px;
  }

  .step-label {
    display: block;
    font-size: 12px;
    text-transform: uppercase;
    color: var(--color-text-muted);
    margin-bottom: 4px;
    font-weight: 700;
  }

  .step-number {
    font-family: var(--font-heading);
    font-size: 48px;
    font-weight: 700;
    color: var(--color-primary);
    line-height: 1;
  }

  .step-card h3 {
    font-family: var(--font-heading);
    font-size: 22px;
    font-weight: 700;
    color: var(--color-black);
    margin-bottom: 16px;
  }

  .step-card p {
    font-size: 15px;
    color: var(--color-text-muted);
    line-height: 1.7;
  }

  @media (max-width: 900px) {
    .steps-grid { grid-template-columns: 1fr; gap: 40px; }
  }
</style>
