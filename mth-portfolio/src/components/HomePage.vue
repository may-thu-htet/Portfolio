<template>
  <v-row class="text-center d-flex flex-wrap h-100" no-gutters>
    <!-- Portfolio Left Side Info Start Here -->
    <v-col cols="12" sm="5" md="4" lg="3" xxl="2">
      <v-card
        flat
        color="blue-grey-darken-4"
        rounded="0"
        :min-height="height"
        height="100%"
      >
        <!-- EN / JP button -->
        <lang-option></lang-option>

        <!-- Profile Picture -->
        <v-avatar
          class="my-3"
          :class="cardStyle"
          color="info"
          :size="avatarSize"
          ><v-img
            class="position-initial"
            alt="Avatar"
            :src="imageSrc.src"
            cover
          ></v-img>
          <!-- <v-icon :size="avatarSize">mdi-account</v-icon> -->
        </v-avatar>

        <!-- Each card format will be like the following -->
        <!-- <v-card-content>
          <v-card-title></v-card-title>
          <v-card-text>
            <div id="">
              <v-list-item>
                <v-icon></v-icon>
                Name or Value (level)
                <v-progress-line>Skill and Language Only</v-progress-line>
              </v-list-item>
            </div>
          </v-card-text>
        </v-card-content> -->

        <!-- Contacts/Edu/Lang/Skills -->
        <v-card-content
          v-for="(items, titleKey) in cv.infoLeftPg[lang.code]"
          :key="titleKey"
          :class="cardStyle"
        >
          <v-card-title class="text-uppercase">{{ items.title }}</v-card-title>
          <v-card-text
            v-for="(item, key) in items.value"
            :key="key"
            class="py-0"
            ><div
              :id="key"
              v-if="key !== 'socialMedia'"
              class="w-100 text-start"
            >
              <!-- Educations -->
              <template v-if="titleKey === 'educations'">
                <v-list-item v-for="(icon, eduKey) in item.icon" :key="eduKey"
                  ><v-icon :icon="icon" class="pr-3"></v-icon
                  >{{ item[eduKey] }}</v-list-item
                >
              </template>

              <!-- Contact/Language/Skills -->
              <v-list-item v-else>
                <v-icon
                  :icon="item.icon ? item.icon : 'mdi'"
                  class="pr-3"
                ></v-icon
                >{{ item.name ? item.name : item.value }}
                {{ level[lang.code][item.value] }}
              </v-list-item>

              <!-- Progress bar for skills and languages -->
              <v-progress-linear
                v-if="titleKey === 'skills' || titleKey === 'languages'"
                height="8"
                rounded
                color="blue"
                :model-value="item.value"
              >
                <v-svg-icon></v-svg-icon>
              </v-progress-linear>
            </div>

            <!-- Social Media div on Contact div -->
            <div
              :id="key"
              v-else-if="key === 'socialMedia'"
              class="w-100 text-start"
            >
              <v-list-item class="px-1">
                <v-btn
                  v-for="(socialMedia, key) in item"
                  class="h-0 py-3"
                  :key="key"
                  :icon="socialMedia.icon"
                  :color="socialMedia.color"
                  :href="socialMedia.value"
                  target="_blank"
                  variant="plain"
                >
                </v-btn>
              </v-list-item></div
          ></v-card-text>
        </v-card-content>
      </v-card>
    </v-col>
    <!-- Portfolio Left Side Info Ends Here -->

    <!-- Portfolio Right Side Info Starts Here -->
    <v-col cols="12" sm="7" md="8" lg="9" xxl="10" class="pa-3">
      <!-- Motivation -->
      <v-card color="grey-lighten-3" flat>
        <v-card-title class="justify-center text-uppercase">{{
          cv[lang.code].personalInfo.name
        }}</v-card-title>
        <v-card-text class="text-uppercase pt-0">{{
          cv[lang.code].personalInfo.profession
        }}</v-card-text>
      </v-card>

      <!-- Project/Hobbies/Experience/Certs -->
      <v-card class="mt-3" flat>
        <v-card-content
          v-for="(items, titleKey) in cv.infoRightPg[lang.code]"
          :id="titleKey"
          :key="titleKey"
          :class="cardStyle"
        >
          <v-card-title class="text-uppercase">{{ items.title }}</v-card-title>
          <v-card-text
            v-for="(item, key) in items.value"
            :key="key"
            class="py-0"
            ><div
              v-if="titleKey !== 'hobbies'"
              :id="titleKey"
              class="w-100 text-start"
            >
              <v-list-item>
                <v-icon
                  v-if="item.icon !== ''"
                  :icon="item.icon ? item.icon : 'mdi'"
                  :color="item.color ? item.color : ''"
                  :size="item.size ? item.size : 'default'"
                  class="pr-3"
                ></v-icon
                ><img
                  v-if="item.svg"
                  :src="require('@/assets/SVG/' + item.svg)"
                />{{ item.name && !item.link ? item.name : item.value
                }}{{ item.svg }}

                <!-- button for links to open in new tab -->
                <!-- :href="item.link" -->
                <v-btn
                  v-if="
                    item.name === 'CSS Project' ||
                    item.name === 'Vue App' ||
                    item.value
                  "
                  class="text-decoration-underline pl-0"
                  :color="linkColor"
                  target="_blank"
                  variant="text"
                  @click="$router.push(item.link)"
                  >{{ item.name }}</v-btn
                >
                <v-btn
                  class="text-decoration-underline pl-0 text-wrap"
                  :color="linkColor"
                  target="_blank"
                  variant="text"
                  v-else
                  :href="item.link"
                  >{{ item.name }}</v-btn
                >
                <v-icon
                  v-if="
                    (item.link && item.name !== 'CSS Project') ||
                    (item.name !== 'Vue App' && !item.value)
                  "
                  >mdi-open-in-new</v-icon
                >
              </v-list-item>
            </div>
            <div
              id="description"
              v-if="item.description && titleKey !== 'hobbies'"
              class="text-start pl-4"
            >
              {{ item.description }}
            </div>
          </v-card-text>
          <template v-if="titleKey === 'hobbies'">
            <v-col class="text-start">
              <v-btn
                v-for="(item, key) in items.value"
                :key="key"
                class="mx-3 pa-3"
                :size="item.size ? item.size : 'default'"
                variant="plain"
                style="opacity: 1"
                ><v-icon
                  :icon="item.icon ? item.icon : 'mdi'"
                  :style="item.style ? item.style : ''"
                  :color="item.color ? item.color : ''"
                  :size="item.size ? item.size : 'default'"
                ></v-icon
                ><br /><v-card-text :width="flexWidth">{{
                  item.description
                }}</v-card-text></v-btn
              >
            </v-col>
          </template>
        </v-card-content>
      </v-card>
    </v-col>
  </v-row>
</template>

<script setup>
import { useDisplay, useTheme } from "vuetify";
import { ref, computed } from "vue";
import { useCVStore } from "@/stores/CVStore";
import { useLangStore } from "@/stores/LangStore";
import Level from "@/level";
import LangOption from "./ui/LangOption.vue";
import profile from "@/assets/May.jpg";

const { name, height } = useDisplay();
const theme = useTheme();
const cv = useCVStore();
const lang = useLangStore();

// skill levels eg.beginner, etc
const level = ref({
  en: Level.en,
  jp: Level.jp,
});

const imageSrc = ref({ src: profile });
// const imageSrc = ref({ src: "./src/assets/MTH Photo.png" });

const avatarSize = computed(() => {
  switch (name.value) {
    // setting avatar size for smaller screens
    case "xs":
      return "100";
    // default avatar size for all other screens
    default:
      return "120";
  }
});

const flexWidth = computed(() => {
  switch (name.value) {
    // setting avatar size for smaller screens
    case "xs":
      return "960";
    case "sm":
      return "960";
    // default avatar size for all other screens
    default:
      return "120";
  }
});

// color for link
const linkColor = computed(() => {
  return theme.name.value === "dark" ? "light-blue-lighten-4" : "blue-accent-3";
});

// card style sharing across all cards
const cardStyle = computed(() => {
  return "px-0 px-md-3 pb-0 pb-sm-3";
});
</script>
<style scoped>
.position-initial {
  position: initial !important;
}
a >>> div.v-btn__content {
  white-space: break-spaces !important;
}
</style>
