<template>
  <v-card-actions class="justify-end card-height pt-3">
    <v-btn-toggle
      variant="plain"
      density="compact"
      color="light-blue-accent-1"
      v-model="langOptions"
      mandatory
      @update:model-value="lang.code = langCode"
    >
      <v-btn
        v-for="(lang, key) in langs"
        style="opacity: 1"
        size="small"
        class="px-0 mx-0"
        :key="key"
        rounded="0"
      >
        {{ lang }}
      </v-btn>
    </v-btn-toggle>
  </v-card-actions>
</template>
<script setup>
import { useLangStore } from "@/stores/LangStore";
import { ref, computed } from "vue";
const lang = useLangStore();
const langs = ["en", "jp"];
const langOptions = ref(lang.code === "en" ? 0 : 1);

const langCode = computed(() => {
  return langOptions.value === 0 ? "en" : "jp";
});
</script>
<style scoped>
.card-height {
  max-height: 30px !important;
  min-height: 15px !important;
}
</style>
