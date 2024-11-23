<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Navbar from './Navbar.vue';

export default {
  name: 'WarehouseList',
  components: {
    Navbar,
  },
};
</script>

<style scoped>
</style>
