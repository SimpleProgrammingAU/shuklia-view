<script lang="ts">
  import { onMount, onDestroy } from 'svelte';
  import { Card } from 'spaper';

  let videoElement: HTMLVideoElement;
  let stream: MediaStream;

  onMount(async () => {
    try {
      stream = await navigator.mediaDevices.getUserMedia({ video: true });
      if (videoElement) videoElement.srcObject = stream;
      else throw new Error('Video element was not mounted.');
    } catch (err) {
      console.error('Error accessing webcam: ', err);
    }
  });

  onDestroy(() => {
    if (stream) {
      stream.getTracks().forEach((track) => track.stop());
    }
  });
</script>

<Card>
  <video bind:this="{videoElement}" autoplay playsinline></video>
</Card>

<style lang="scss">
</style>
