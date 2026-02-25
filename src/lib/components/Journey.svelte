<script>
  export let data;
</script>

<section class="journey">
  <div class="container">
    <div class="journey-head">
      <span class="section-label">{data.sectionLabel}</span>
      <h2 class="section-heading">{data.heading}</h2>
      <div class="head-divider" aria-hidden="true"></div>
    </div>

    <div class="journey-inner">
      <div class="journey-image">
        <div class="img-frame">
          <img src={data.image.src} alt={data.image.alt} loading="lazy" />
        </div>
      </div>

      <div class="journey-text">
        <div class="accent-line" aria-hidden="true"></div>
        {#if data.subheading}
          <h3 class="section-subheading">{data.subheading}</h3>
        {/if}
        {#each data.paragraphs as para}
          <p>{para}</p>
        {/each}

        {#if data.checklist?.length}
          <ul class="checklist">
            {#each data.checklist as item}
              <li>
                <span class="check-icon" aria-hidden="true">✓</span>
                <span>{item}</span>
              </li>
            {/each}
          </ul>
        {/if}

        <a href="/about" class="btn btn-primary journey-btn">
          ALL ABOUT US
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="14" height="14" fill="currentColor" aria-hidden="true"><path d="M504.3 273.6l-112.1 104c-6.992 6.484-17.18 8.218-25.94 4.406c-8.758-3.812-14.42-12.45-14.42-21.1L351.9 288H32C14.33 288 .0002 273.7 .0002 255.1S14.33 224 32 224h319.9l0-72c0-9.547 5.66-18.19 14.42-22c8.754-3.809 18.95-2.075 25.94 4.41l112.1 104C514.6 247.9 514.6 264.1 504.3 273.6z"></path></svg>
        </a>
      </div>
    </div>
  </div>
</section>

<style>
  .journey {
    padding: 90px 0 80px;
    background: #ececec;
  }

  .journey-head {
    margin-bottom: 56px;
  }

  .journey-head .section-label {
    margin-bottom: 20px;
    font-size: 14px;
    letter-spacing: 0.8px;
    color: var(--color-black);
    text-transform: uppercase;
  }

  .journey-head .section-heading {
    max-width: 980px;
    font-size: clamp(34px, 4.2vw, 54px);
    margin-bottom: 34px;
    line-height: 1.15;
    color: #0d0d0d;
  }

  .head-divider {
    width: 100%;
    border-top: 1px solid #8db9cc;
  }

  .journey-inner {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 72px;
    align-items: center;
  }

  .journey-image {
    position: relative;
  }

  .img-frame {
    position: relative;
    border-radius: 0;
    overflow: hidden;
  }

  .img-frame img {
    width: 100%;
    height: auto;
    display: block;
    border-radius: 0;
  }

  .accent-line {
    width: 56px;
    border-top: 3px solid #2f7b98;
    margin-bottom: 24px;
  }

  .section-subheading {
    font-family: var(--font-heading);
    font-size: clamp(24px, 2.2vw, 42px);
    font-weight: 700;
    line-height: 1.25;
    margin-bottom: 14px;
    color: #111111;
  }

  .journey-text p {
    color: #222222;
    line-height: 1.7;
    margin-bottom: 20px;
    font-size: 16px;
  }

  .checklist {
    margin: 12px 0 28px;
    display: grid;
    gap: 12px;
  }

  .checklist li {
    display: flex;
    align-items: flex-start;
    gap: 12px;
    color: #181818;
    font-size: 16px;
  }

  .check-icon {
    line-height: 1;
    font-weight: 700;
    color: #111111;
  }

  .journey-btn {
    gap: 10px;
    margin-top: 6px;
  }

  .journey-btn svg {
    transform: translateY(1px);
  }

  @media (max-width: 900px) {
    .journey {
      padding: 60px 0;
    }

    .journey-head {
      margin-bottom: 34px;
    }

    .journey-head .section-heading {
      margin-bottom: 22px;
    }

    .journey-inner {
      grid-template-columns: 1fr;
      gap: 30px;
    }

    .journey-text p,
    .checklist li {
      font-size: 16px;
    }
  }
</style>
