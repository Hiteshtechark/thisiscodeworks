<script>
  import { onMount } from 'svelte';
  import { tweened } from 'svelte/motion';
  import { cubicOut } from 'svelte/easing';

  export let value = 0;
  export let duration = 1500;
  export let suffix = '';
  export let prefix = '';

  // Parse value to number if it's a string with suffixes
  const numericValue = typeof value === 'string' ? parseFloat(value.replace(/,/g, '')) : value;

  const count = tweened(0, {
    duration: duration,
    easing: cubicOut
  });

  let element;
  let hasStarted = false;

  onMount(() => {
    const observer = new IntersectionObserver(
      (entries) => {
        if (entries[0].isIntersecting && !hasStarted) {
          hasStarted = true;
          count.set(numericValue);
        }
      },
      { threshold: 0.1 }
    );

    if (element) {
      observer.observe(element);
    }

    return () => observer.disconnect();
  });

  $: formattedValue = Math.floor($count).toLocaleString();
</script>

<span bind:this={element} class="counter-value">
  {prefix}{formattedValue}{suffix}
</span>

<style>
  .counter-value {
    display: inline-block;
  }
</style>
