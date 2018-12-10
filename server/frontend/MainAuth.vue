<template>
  <div class="auth-wrapper">
    <slot></slot>
  </div>
</template>

<script>
export default {
  name: 'MainAuth'
}
</script>

<style lang="scss">
@import "src/sass/authentication";
#main-app {
  color: blue;
}
</style>
