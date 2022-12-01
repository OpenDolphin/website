<script setup lang="ts">
import Button from '@/components/Button.vue';

const slackInvite = 'https://join.slack.com/t/open-dolphin/shared_invite/zt-1kf9nf5ao-_hMCsTsqhau7vGUTbJwXng';
</script>

<template>
  <main>
    <div class="home">
      <div class="first-section full-height-section">
        <img 
          class="background-image" 
          src="https://images.unsplash.com/photo-1530053969600-caed2596d242"/>
        <div class="section-inner">
        <div class="main-cta">
          <h1>Truly Open Social Network</h1>
          <p class="quick-desc">
            Centralized, free and open-source social network 
            built with and steered by the community.
          </p>
        </div>

        <div class="cta-buttons">
          <Button to="/about" textColor="white">Learn More</Button>
          <Button type="secondary" to="/contribute" textColor="white">Contribute</Button>
        </div>
      </div>
      </div>

      <div class="second-section full-height-section">
        <div class="section-inner">
          <div class="q-and-a">
            <h1>What is OpenDolphin?</h1>
            <p>OpenDolphin is a project whose goal is to build an open-source social network.</p>
            <p>
              Our ambition is to let the project be controlled entirely by the community in all of its parts (ideas, design, coordination, ...)
              with the objective of becoming the best competitor to the mainstream social networks (e.g: Twitter, Facebook, Instagram).
            </p>

            <h1>How is it different from Mastodon / GNU social?</h1>
            <p>
              OpenDolphin aims at being a <i>centralized</i> social network to overcome some of the issues of the decentralized social networks. <br/>
              Our goal is to keep everything transparent (from the develoment process to the content moderation), and let the people control everything.
            </p>

            <h1>How do I participate in the project?</h1>
            <p>
              Introduce yourself in <a href="https://github.com/OpenDolphin/introduction/issues/3">this GitHub issue</a> and/or 
              <a :href="slackInvite">join our Slack instance</a>!
              <a :href="slackInvite" target="_blank">
                <img src="/logos/slack-logo.svg" class="slack-logo"/>
              </a>
            </p>

            <h1>Can I have a sneak peek of what's the UI like?</h1>
            <p>
              Sure! Head over to <a href="https://app.opendolphin.social/">app.opendolphin.social</a> and enjoy!
            </p>

            <h1>Do you have a GitHub organization?</h1>
            <p><a href="https://github.com/OpenDolphin" target="_blank">Of course</a>, and you are invited to collaborate.</p>

            <h1>Do you have a roadmap?</h1>
            <p>
              <a href="https://github.com/orgs/OpenDolphin/projects/1" target="_blank">We're building one</a>, 
              although we need more people to join in order to define the product better and choose how we want to build the product.
            </p>

            <h1>Why the dolphin? 🐬</h1>
            <p>
              Because they're smart and cute - but as with everything in this project, if you don't like it / have a better idea for the brand
              (for example, a different name, a different logo, ...) you can help us out by contributing to 
              <a href="https://github.com/OpenDolphin/brand" target="_blank">this repository</a>.
            </p>

            <p>You don't like the name? It's anyways temporary - help us find a better one in the 
              <a href="https://github.com/OpenDolphin/brand" target="_blank">brand repository</a></p>
          </div>
          <div class="early-mockups">
            <img src="https://github.com/OpenDolphin/product-design/blob/master/app/prototype/img/profile-view.png?raw=true"/>
          </div>
        </div>
      </div>
    </div>
  </main>
</template>

<style lang="scss" scoped>
$headerHeight: 80px;
h1 {
  color: var(--color-accent);
  font-weight: bold;
  font-size: 32px;
}

div.home {
  display: flex;
  flex-direction: column;
  height: 100vh;
  width: 100%;

  div.full-height-section {
    position: relative;
    min-height: 100vh;
    width: 100%;

    div.section-inner {
      display: flex;
      min-height: 100vh;
      flex-direction: column;
      column-gap: 50px;
      margin-left: auto;
      margin-right: auto;
      overflow: hidden;
      max-width: 1200px;
      padding: 60px;
    }

    img.background-image, div.background-image-overlay {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      width: 100%;
      height: 100%;
    } 

    img.background-image {
      object-fit: cover;
    }
  }

  div.first-section {
    color: #FFF;
    height: calc(100vh);
    margin-top: -$headerHeight;
    margin-bottom: calc($headerHeight/2);

    div.section-inner {
      justify-content: center;
      height: 100%;
    }

    img.background-image {
    }

    div.main-cta {
      align-items: center;
      font-size: 24px;
      text-align: center;
      margin-top: $headerHeight;
      
      h1 {
        color: #FFF;
        text-shadow: 1px 1px 4px #222;
        font-size: 2.5em;
        line-height: 1.25em;
        letter-spacing: -2px;
        font-weight: 800;
      }
      
      p.quick-desc {
        margin-top: 1.5em;
        text-shadow: 1px 1px 1px #222;
      }
    }

    div.cta-buttons {
      display: flex;
      flex-direction: row;
      justify-content: center;
      column-gap: 20px;
      margin-top: 80px;
    }
  }

  div.second-section {
    h1 {
      margin-bottom: 12px;
      margin-top: 24px;
    }

    div.section-inner {
      display: flex;
      flex-direction: row;
      max-width: 1600px;
      column-gap: 25px;
      row-gap: 15px;
      object-fit: cover;

      div.early-mockups {
        width: 50vw;
        max-width: 400px;
        img {
          border-radius: 5px;
          width: 100%;
        }
      }

      img.slack-logo {
        display: block;
        margin-top: 8px;
        border-radius: 5px;
        height: 40px;
        background-color: #FFF;
        padding: 8px;
      }
    }
  }
}

@media screen and (max-width: 900px) {
  div.home {
    div.second-section {
      div.section-inner {
        flex-direction: column;
      }
    }
  }
}
</style>
