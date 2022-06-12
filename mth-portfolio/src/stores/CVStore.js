import { defineStore } from "pinia";
import CvEn from "@/assets/CvEn.json";
import CvJp from "@/assets/CvJp.json";

export const useCVStore = defineStore({
  id: "CVStore",
  state: () => ({
    en: CvEn,
    jp: CvJp,
  }),
  getters: {
    infoLeftPg(state) {
      return {
        en: {
          contact: { title: "contact", value: state.en.contact },
          educations: { title: "educations", value: state.en.educations },
          languages: { title: "languages", value: state.en.languages },
          skills: { title: "skills", value: state.en.skills },
        },
        jp: {
          contact: { title: "連絡先", value: state.jp.contact },
          educations: { title: "最終学歴", value: state.jp.educations },
          languages: { title: "言語", value: state.jp.languages },
          skills: { title: "スキル", value: state.jp.skills },
        },
      };
    },
    infoRightPg(state) {
      return {
        en: {
          // personalInfo: { title: "profile", value: state.en.personalInfo },
          motivation: { title: "motivation", value: state.en.motivation },
          projects: { title: "projects", value: state.en.projects },
          hobbies: { title: "hobbies/interests", value: state.en.hobbies },
          experiences: { title: "experiences", value: state.en.experiences },
          certificates: { title: "certificates", value: state.en.certificates },
        },
        jp: {
          motivation: { title: "モチベーション", value: state.jp.motivation },
          projects: { title: "プロジェクト", value: state.jp.projects },
          hobbies: { title: "趣味/興味", value: state.jp.hobbies },
          experiences: { title: "経験", value: state.jp.experiences },
          certificates: { title: "資格", value: state.jp.certificates },
        },
      };
    },
  },
});
