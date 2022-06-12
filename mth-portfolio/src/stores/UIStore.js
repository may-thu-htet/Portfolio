import { defineStore } from "pinia";

export const useUIStore = defineStore({
  id: "UIStore",
  state: () => ({
    drawer: false,
  }),
});
