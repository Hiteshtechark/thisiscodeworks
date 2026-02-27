<script>
  import homeData from '$lib/data/home.json';
  import Hero from '$lib/components/Hero.svelte';
  import Journey from '$lib/components/Journey.svelte';
  import Services from '$lib/components/Services.svelte';
  import Process from '$lib/components/Process.svelte';
</script>

<svelte:head>
  <title>Codeworks Consulting – Bridging Technology and Innovation</title>
  <meta name="description" content="Codeworks Consulting is a leading technology company specializing in web & mobile development, digital marketing, and IT consulting." />
</svelte:head>

<Hero data={homeData.hero} />
<Journey data={homeData.journey} />
<Services data={homeData.services} />
<Process data={homeData.process} />
