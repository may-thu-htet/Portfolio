<template>
  <div id="app">
    <ColorPicker
      :gradient="gradient"
      :isGradient="true"
      :onStartChange="(color) => onChange(color, 'start')"
      :onChange="(color) => onChange(color, 'change')"
      :onEndChange="(color) => onChange(color, 'end')"
    />
  </div>
</template>

<script>
import { ColorPicker } from "vue-color-gradient-picker";

export default {
  name: "App",

  components: {
    ColorPicker,
  },

  data() {
    return {
      gradient: {
        type: "linear",
        degree: 0,
        points: [
          {
            left: 0,
            red: 0,
            green: 0,
            blue: 0,
            alpha: 1,
          },
          {
            left: 100,
            red: 255,
            green: 0,
            blue: 0,
            alpha: 1,
          },
        ],
      },
    };
  },

  methods: {
    onChange(attrs, name) {
      console.log(name);
    },
  },
};
</script>

<style src="vue-color-gradient-picker/dist/index.css" lang="css" />
