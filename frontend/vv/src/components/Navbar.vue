<!-- Navbar.vue -->
<template>
  <div class="navbar bg-neutral text-neutral-content fixed top-0 left-0 w-full z-10 h-[4rem]">
    <div class="flex justify-center w-full">
      <router-link to="/" class="btn btn-ghost text-xl">仓库</router-link>
      <router-link to="/goods" class="btn btn-ghost text-xl">货物</router-link>
      <router-link to="/inbound" class="btn btn-ghost text-xl">入库日志</router-link>
      <router-link to="/outbound" class="btn btn-ghost text-xl">出库日志</router-link>
      <router-link to="/price-history" class="btn btn-ghost text-xl">货物价格历史</router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Navbar',
};
</script>

<style scoped>
</style>