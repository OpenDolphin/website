<script setup lang="ts">
import Button from '@/components/Button.vue';

</script>

<template>
  <main>
    <div class="home">
      <div class="first-section">
        <div class="main-cta">
          <h1>Truly Open Social Network</h1>
          <p class="quick-desc">
            Centralized, free and open-source social network 
            built with and steered by the community.
          </p>
        </div>

        <div class="cta-buttons">
          <Button to="/about">Learn More</Button>
          <Button type="secondary" to="/contribute">Contribute</Button>
        </div>
      </div>
    </div>
  </main>
</template>

<style lang="scss" scoped>
div.home {
  width: 100%;

  div.first-section {
    position: relative;
    color: #10b7ff;
    display: flex;
    flex-direction: column;
    margin-left: auto;
    margin-right: auto;
    column-gap: 50px;
    align-content: center;
    justify-content: center;
    height: calc(100vh - 100px);
    overflow: hidden;
    max-width: 900px;
    padding: 60px;

    div.main-cta {
      align-items: center;
      font-size: 24px;
      backdrop-filter: blur(8px);
      text-align: center;

      h1 {
        font-size: 2.5em;
        line-height: 1.25em;
        letter-spacing: -2px;
        font-weight: 800;
      }

      p.quick-desc {
        color: #3dc5ff;
        margin-top: 1.5em;
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
}
</style>
