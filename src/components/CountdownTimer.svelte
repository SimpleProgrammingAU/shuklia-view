<script lang="ts">
  import { Card } from 'spaper';
  import { onMount } from 'svelte';

  let i: number;
  let s = 60;
  $: countdown = formatOutput(s);

  const formatOutput = (s: number) => {
    const { floor } = Math;
    const hours = `${floor(s / 3600)}`;
    const minutes = `${floor((s % 3600) / 60)}`;
    const seconds = `${s % 60}`;

    return { hours, minutes, seconds };
  };

  const startCounter = () => {
    i = setInterval(() => {
      s--;
      if (s === 0) stopCounter();
    }, 1000);
  };

  const stopCounter = () => clearInterval(i);

  const resetCounter = () => {
    stopCounter();
    s = 60;
  };

  onMount(() => {
    resetCounter();

    window.addEventListener('keydown', (e) => {
      switch (e.code) {
        case 'Numpad1':
          if (s > 0) startCounter();
          else {
            resetCounter();
            startCounter();
          }
          break;
        case 'Numpad2':
          stopCounter();
          break;
        case 'Numpad3':
          resetCounter();
          break;
      }
    });
  });
</script>

<div class="countdown">
  {countdown.hours}
  <span>:</span>
  {'0'.repeat(2 - countdown.minutes.length)}{countdown.minutes}
  <span>:</span>
  {'0'.repeat(2 - countdown.seconds.length)}{countdown.seconds}
</div>

<style lang="scss">
  div.countdown {
    font-family: 'Seven Segment';
    font-size: 4rem;
    font-weight: 700;
    text-align: center;
    color: rgb(207, 10, 10);
    background-color: rgb(20, 20, 20);
    width: 20rem;
    padding: 0.5rem 1rem 0 1rem;

    display: flex;
    justify-content: center;
    align-items: center;
    align-content: space-around;
  }

  span {
    font-family: 'Courier New', Courier, monospace;
  }
</style>
