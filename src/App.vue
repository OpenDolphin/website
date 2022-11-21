<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <header>
    <div class="logo">
      <router-link to="/">
        <img src="https://raw.githubusercontent.com/OpenDolphin/brand/master/logo/logo.svg"/>
      </router-link>
    </div>
    <nav class="menu">
      <router-link to="/about">About</router-link>
      <router-link to="/contribute">Contribute</router-link>
    </nav>
  </header>

  <div class="content">
    <RouterView />
  </div>
</template>

<style lang="scss" scoped>
$leftRight: 50px;

header {
  position: sticky;
  top: 0;
  left: 0;
  right: 0;

  display: flex;
  overflow: hidden;
  background-color: var(--color-header);
  backdrop-filter: blur(5px);
  z-index: 300;

  flex-direction: row;
  justify-content: space-between;

  height: 80px;
  margin-top: 10px;
  margin-bottom: 10px;
  padding: 10px;
  padding-left: $leftRight;
  padding-right: $leftRight;

  div.logo {
    cursor: pointer;
    height: 100%;
    overflow: hidden;
    img {
      height: 100%;
      object-fit: contain;
    }
  }

  nav {
    display: flex;
    flex-direction: row;
    align-items: center;
    height: 100%;
    column-gap: 50px;

    a {
      color: var(--color-navbar-item);
      text-decoration: none;
      user-select: none;
      font-weight: 500;
      font-size: 18px;
    }
  }
}

div.content {
  color: var(--color-text);
}

</style>
