<template>
  <body style="background-color: #d8cbfb">
    <h1 class="about">Introduction (自己紹介)</h1>
    <div>
      <p>
        I had finished my undergraduate degree in February,2015 and decided to
        study abroad. Therefore, I started to prepare the language skill
        required and then went to UK and attended post-gradurate master program
        at Newcastle University. After I have finished my graduation, I started
        working as a freelance Naval Architect. After a little while, I felt
        like I want to challenge more and decided to come to Japan to work as a
        design engineer as Toyota Kohki Co.,Ltd. I tried at the aforemensioned
        company and I even went to factory for training as I want to design the
        formwork from scratch. The following photos were taken when I went to
        the factory and trying to understand the assembly and welding process so
        that I can apply in design consideration.
      </p>
      <div>
        <img :src="images.image1" alt="pic 1" />
        <img :src="images.image2" alt="pic 2" />
        <img :src="images.image3" alt="pic 3" />
        <img :src="images.image4" alt="pic 4" />
      </div>
      <p>
        After a while, I am thinking about what I want to do in the future
        career and the result is that I want to deal with the creative design,
        implementing simple and artistic web app as well as moblie app. And
        hence I started learning basic HTML,CSS and JavaScript in October, 2011.
        From that, I moving to self-study UIUX design using Figma and design
        concept and I am really enjoying it. As my hobby is creating art and I
        have been doing painting and drawing since my childhood. I have drawn a
        lot of portraits, acrylic and watercolor paintings, modern paintings
        using acrylics, color pencils and pastels. Resently, I started learning
        digital drawing using Procreate App. I also want to learn paint using
        oil which is on my next basket list. The following pictures are some of
        my art works throughout my life until now.
      </p>
      <div>
        <img :src="images.image5" alt="paint1" />
        <img :src="images.image6" alt="paint2" />
        <img :src="images.image7" alt="paint3" />
        <img :src="images.image8" alt="paint4" />
        <img :src="images.image9" alt="paint5" />
        <img :src="images.image10" alt="paint6" />
        <img :src="images.image11" alt="paint7" />
        <img :src="images.image12" alt="paint8" />
      </div>
      <h2>Self PR</h2>
      <p>
        As I am interested in art and design, I strongly believed that I can
        create an attractive and easy-to-use web app using my self-study
        knowledge and artistic sense. I can communicate well between the teams
        and organize the information and ideas in the most efficient way.I have
        high level of attention-to-detail as I had to work precisely at the
        previous job at which the maximum allowable error tolerance is within
        +-1mm.
      </p>
    </div>
  </body>
</template>
<script setup>
import { ref } from "vue";
import wPhoto1 from "@/welding photos/IMG_6441.jpg";
import wPhoto2 from "@/welding photos/IMG_6442.jpg";
import wPhoto3 from "@/welding photos/IMG_6444.jpg";
import wPhoto4 from "@/welding photos/IMG_6454.jpg";
import pPhoto1 from "@/Painting/Mt.Fuji.jpg";
import pPhoto2 from "@/Painting/Splashing cloud.jpg";
import pPhoto3 from "@/Painting/War and Peace.jpg";
import pPhoto4 from "@/Painting/Tharapa gate.jpg";
import pPhoto5 from "@/Painting/Fiona.jpg";
import pPhoto6 from "@/Painting/Comy.jpg";
import pPhoto7 from "@/Painting/Taylor Swift .jpg";
import pPhoto8 from "@/Painting/The Eyes.jpg";
const images = ref({
  image1: wPhoto1,
  image2: wPhoto2,
  image3: wPhoto3,
  image4: wPhoto4,
  image5: pPhoto1,
  image6: pPhoto2,
  image7: pPhoto3,
  image8: pPhoto4,
  image9: pPhoto5,
  image10: pPhoto6,
  image11: pPhoto7,
  image12: pPhoto8,
});
</script>

<style scoped>
@media (min-width: 1024px) {
  .about {
    display: flex;
    align-items: center;
    margin: 1rem;
    color: #434344;
    background-color: #d8cbfb;
    margin-top: 0;
    margin-bottom: 0;
  }
}
h1 {
  text-align: center;
  padding-top: 1rem;
}
h2 {
  margin: 1rem;
}
p {
  font-family: "Lato", sans-serif;
  color: #434344;
  background-color: #d8cbfb;
  font-size: large;
  margin-bottom: 1rem;
  padding-top: 1rem;
  padding-bottom: 1rem;
  padding-left: 1rem;
  font-display: justify;
  justify-content: space-evenly;
}
img {
  width: 25%;
  margin-left: auto;
  margin-right: auto;
  padding: 10px 20px;
  border-radius: 15%;
  height: auto;
  justify-content: space-evenly;
}
</style>
