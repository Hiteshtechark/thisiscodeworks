<script>
  export let data;
</script>

<section class="cta">
  <div class="container cta-content">
    <div class="cta-text">
      <h2>{data.heading}</h2>
      {#if data.subheading}
        <p>{data.subheading}</p>
      {/if}
    </div>
    <div class="cta-actions">
      <a href={data.button.href} class="btn btn-primary cta-btn">{data.button.label}</a>
    </div>
  </div>
</section>

<style>
  .cta {
    position: relative;
    padding: 80px 0;
    background: var(--color-primary);
    color: var(--color-white);
  }

  .cta-content {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 40px;
  }

  .cta-text h2 {
    font-family: var(--font-heading);
    font-size: 32px;
    font-weight: 700;
    line-height: 1.2;
    margin-bottom: 12px;
  }

  .cta-text p {
    font-size: 18px;
    opacity: 0.9;
  }

  .cta-btn {
    background: var(--color-bg-dark);
    color: var(--color-white);
    border-color: var(--color-bg-dark);
    white-space: nowrap;
  }

  .cta-btn:hover {
    background: var(--color-black);
    border-color: var(--color-black);
    transform: translateY(-2px);
  }

  @media (max-width: 768px) {
    .cta-content {
      flex-direction: column;
      text-align: center;
    }
  }
</style>
