<template>
  <a href="https://maythuhtet.com/" class="nav-link">Home</a>
  <h1 class="header">Still working in progress</h1>
  <div class="col-md-3">
    <svg-animation class="img-fluid"></svg-animation>
  </div>
</template>
<script setup>
import SvgAnimation from "./SvgAnimation.vue";
</script>
<style scoped>
.header {
  color: #004f70;
  position: absolute;
  width: 570px;
  height: 89px;
  left: 435px;
  top: 43px;
}
.img-fluid {
  position: absolute;
  width: 300px;
  height: 400px;
  left: 480px;
  top: 120px;
}
.nav-link {
  text-align: right;
  padding-top: 1rem;
  font-size: large;
}
</style>
