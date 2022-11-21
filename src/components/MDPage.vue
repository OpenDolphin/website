<script lang="ts" setup>
import { marked } from 'marked';
const props = defineProps({
    content: {
        type: String,
        required: true,
    }
})
</script>

<template>
  <div class="md-page">
    <div class="content" v-html="marked.parse(props.content)"></div>
  </div>
</template>

<style lang="scss">
div.md-page {
  margin: 50px;
  max-width: 800px;
  margin-left: auto;
  margin-right: auto;

  div.content {

    $margins: 20px;
    h1 {
      margin-top: $margins;
      margin-bottom: $margins;
      border-bottom: 1px solid var(--color-text);
    }

    h2,h3 {
      margin-top: $margins/2;
      margin-bottom: $margins/2;
    }
    
    p {
      margin-top: $margins/3;
      margin-bottom: $margins/3;
    }
  }
}
</style>
