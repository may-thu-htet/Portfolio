<template>
  <v-app :theme="theme.mode">
    <NavBar @update:theme="toggleTheme" />
    <v-main>
      <v-container fluid class="pa-0">
        <router-view v-slot="{ Component }">
          <v-slide-x-transition leave-absolute>
            <component :is="Component" />
          </v-slide-x-transition>
        </router-view>
      </v-container>
    </v-main>
    <v-btn
      style="right: 10px; bottom: 10px"
      color="pink text-shades-white"
      icon="mdi-menu"
      position="fixed"
      location="right bottom"
      elevation="0"
      @click.stop="nav.drawer = !nav.drawer"
    >
    </v-btn>
  </v-app>
</template>

<script setup>
import { useUIStore } from "@/stores/UIStore";
import NavBar from "./components/ui/NavBar.vue";
import { reactive } from "vue";
const theme = reactive({ mode: "light" });
const nav = useUIStore();
function toggleTheme(mode) {
  theme.mode = mode;
}
</script>
