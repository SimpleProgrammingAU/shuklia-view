<script lang="ts">
  import 'papercss/dist/paper.min.css';
  import '../app.css';

  import {onMount} from 'svelte';
  import { Row, Col } from 'spaper';
  import { Insta, Wisteria } from '../components';
  import GithubMark from '../components/GithubMark.svelte';

  const disableRightClick = (e: MouseEvent) => e.preventDefault();

  onMount(() => {
    window.addEventListener('contextmenu', disableRightClick);
  });

</script>

<Row center>
  <Col class="margin-bottom-none padding-bottom-none">
    <h1>One Minute Portraits</h1>
    <h2>by Shuklia</h2>
    <div><Wisteria /></div>
  </Col>
</Row>
<slot />
<Row center>
  <Col>
  <Insta />
  </Col>
</Row>
<footer><GithubMark /><span>github.com/SimpleProgrammingAU/shuklia-view</span></footer>

<style lang="scss">
  h1 {
    font-size: 5.0rem;
    margin-bottom: 0;
  }
  h2 {
    font-size: 3rem;
    font-weight: 400;
    margin-top: -1rem;
    text-align: center;
  }
  div {
    position: relative;
  }
  footer {
    position: fixed;
    right: 0.5rem;
    bottom: 0.5rem;
    }
</style>
