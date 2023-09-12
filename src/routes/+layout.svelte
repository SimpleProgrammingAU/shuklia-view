<script>
  import 'papercss/dist/paper.min.css';
  import '../app.css';

  import { Row, Col } from 'spaper';
  import { Insta, Wisteria } from '../components';
  import GithubMark from '../components/GithubMark.svelte';
</script>

<Row center>
  <Col>
    <h1>One Minute Portraits</h1>
    <h2>by Shuklia</h2>
    <div><Wisteria /></div>
    <div class="insta"><Insta /></div>
  </Col>
</Row>
<slot />
<footer><GithubMark /><span>github.com/SimpleProgrammingAU/shuklia-view</span></footer>

<style lang="scss">
  h1 {
    font-size: 4.0rem;
    margin-bottom: 0;
  }
  h2 {
    font-size: 2rem;
    font-weight: 400;
    margin-top: -1rem;
    text-align: right;
  }
  div {
    position: relative;
  }
</style>
