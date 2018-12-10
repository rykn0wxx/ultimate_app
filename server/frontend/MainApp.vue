<template>
  <main id="main-app" class="main-content flex md-padding md-content layout-column" md-scroll-y>
    <div class="flex-noshrink">
      <slot></slot>
    </div>
  </main>
</template>

<script>
export default {
  name: 'MainApp'
}
</script>

<style lang="scss" scoped>
#main-app {
  color: blue;
}
</style>
