import { defineStore } from "pinia";

export const useLangStore = defineStore({
  id: "LangStore",
  state: () => ({
    code: "jp",
  }),
});
