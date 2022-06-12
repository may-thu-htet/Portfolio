<template>
  <v-navigation-drawer v-model="nav.drawer" app dense location="right">
    <v-list>
      <v-list-item class="px-0">
        <v-btn
          v-show="nav.drawer"
          variant="plain"
          size="x-small"
          class="px-0"
          @click.stop="nav.drawer = !nav.drawer"
          ><v-icon size="24">mdi-chevron-right</v-icon></v-btn
        >
        <div id="theme-switch" class="switch-style">
          <v-switch
            prepend-icon="mdi-white-balance-sunny"
            append-icon="mdi-moon-waxing-crescent"
            hide-details
            dense
            :color="switchColor"
            @update:modelValue="toggleTheme"
          ></v-switch>
        </div>
      </v-list-item>
      <v-list-item
        v-for="link in links"
        :key="link.name"
        :to="link.path"
        active-color="primary"
        route
      >
        <v-list-item-title v-text="link.name"></v-list-item-title>
      </v-list-item>
      <v-spacer></v-spacer>
    </v-list>
  </v-navigation-drawer>
</template>
<script>
import { useUIStore } from "@/stores/UIStore";
export default {
  props: {
    drawer: {
      type: Boolean,
      default: false,
    },
  },
  emits: ["update:theme"],
  data() {
    return {
      nav: useUIStore(),
    };
  },
  computed: {
    links() {
      return this.$router.options.routes.filter((route) => route.name);
    },
    switchColor() {
      return this.$vuetify.theme.name === "light" ? "#e57105" : "purple";
    },
  },
  methods: {
    toggleTheme(darkMode) {
      this.$emit("update:theme", darkMode ? "dark" : "light");
    },
  },
};
</script>
<style scoped>
#theme-switch.switch-style {
  width: 100px !important;
  margin-left: auto !important;
  margin-right: 0px !important;
  color: v-bind(switchColor);
}
</style>
