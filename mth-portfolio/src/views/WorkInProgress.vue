<template>
  <v-row justify="center">
    <h1 class="header">Still working in progress</h1>
    <svg-animation class="img-fluid mt-12 pt-12"></svg-animation>
  </v-row>
  <!-- <div class="d-flex justify-center"></div> -->
  <v-row justify="center">
    <v-btn @click="$router.push('/')" class="ma-2" color="#79b7e5">
      <v-icon start icon="mdi-arrow-left"></v-icon>BACK
    </v-btn></v-row
  >
</template>
<script setup>
import SvgAnimation from "./SvgAnimation.vue";
// const home = computed(() => {
//   return "https:maythuhtet.com/";
// });
</script>
<style scoped>
h1 {
  color: #004f70;
  position: absolute;
  margin-top: 1rem;
  margin-bottom: 1rem;
  padding-bottom: 1rem;
}
.img-fluid {
  width: 300px;
  height: 400px;
}
.nav-link {
  text-align: center;
  padding-top: 1rem;
  font-size: large;
  font-weight: bold;
}

a {
  color: #004f70;
}
</style>
