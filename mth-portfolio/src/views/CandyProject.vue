<template>
  <body>
    <nav
      id="mainNavbar"
      class="navbar navbar-dark navbar-expand-md py-0 top-fixed"
    >
      <a href="#" class="navbar-brand">CANDY</a>
      <button
        class="navbar-toggler"
        data-toggle="collapse"
        data-target="#navLinks"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navLinks">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="" class="nav-link">HOME</a>
          </li>
          <li class="nav-item">
            <a href="" class="nav-link">ABOUT</a>
          </li>
          <li class="nav-item">
            <a href="" class="nav-link">TICKETS</a>
          </li>
          <li class="nav-item">
            <a href="https://maythuhtet.com/" class="nav-link">BACK</a>
          </li>
        </ul>
      </div>
    </nav>

    <section class="container-fluid px-0">
      <div class="row align-items-center">
        <div class="col-lg-6">
          <div
            id="headingGroup"
            class="text-white text-center d-none d-lg-block mt-5"
          >
            <h1 class="">MUSEUM<span>/</span>OF<span>/</span>CANDY</h1>
            <h1 class="">MUSEUM<span>/</span>OF<span>/</span>CANDY</h1>
            <h1 class="">MUSEUM<span>/</span>OF<span>/</span>CANDY</h1>
            <h1 class="">MUSEUM<span>/</span>OF<span>/</span>CANDY</h1>
            <h1 class="">MUSEUM<span>/</span>OF<span>/</span>CANDY</h1>
            <h1 class="">MUSEUM<span>/</span>OF<span>/</span>CANDY</h1>
            <h1 class="">MUSEUM<span>/</span>OF<span>/</span>CANDY</h1>
          </div>
        </div>
        <div class="col-lg-6">
          <img class="img-fluid" :src="images.image1" alt="hand2" />
        </div>
      </div>
    </section>

    <section class="container-fluid px-0">
      <div class="row align-items-center content">
        <div class="col-md-6 order-2 order-md-1">
          <img :src="images.image2" alt="milk" class="img-fluid" />
        </div>
        <div class="col-md-6 text-center order-1 order-md-2">
          <div class="row justify-content-center">
            <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
              <h2>MUSEUM OF CANDY</h2>
              <img
                :src="images.image3"
                alt="lolli"
                class="d-none d-lg-inline"
              />
              <p class="lead">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque,
                iste molestiae beatae, maiores deserunt in voluptatibus
                aspernatur architecto excepturi delectus soluta? Ipsa, deleniti
                dolorem hic consequatur repellat eveniet quidem voluptate
                necessitatibus dolorum delectus minus vitae, ut, veritatis sint
                ipsum magnam autem nam ex deserunt debitis eaque ratione! Nobis,
                quidem assumenda.
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="row align-items-center content">
        <div class="col-md-6 text-center">
          <div class="row justify-content-center">
            <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
              <h2>MUSEUM OF CANDY</h2>
              <img
                :src="images.image3"
                alt="lolli"
                class="d-none d-lg-inline"
              />
              <p class="lead">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque,
                iste molestiae beatae, maiores deserunt in voluptatibus
                aspernatur architecto excepturi delectus soluta? Ipsa, deleniti
                dolorem hic consequatur repellat eveniet quidem voluptate
                necessitatibus dolorum delectus minus vitae, ut, veritatis sint
                ipsum magnam autem nam ex deserunt debitis eaque ratione! Nobis,
                quidem assumenda.
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <img :src="images.image4" alt="gumball" class="img-fluid" />
        </div>
      </div>
      <div class="row align-items-center content">
        <div class="col-md-6 order-2 order-md-1">
          <img :src="images.image5" alt="sprinkles" class="img-fluid" />
        </div>
        <div class="col-md-6 text-center order-1 order-md-2">
          <div class="row justify-content-center">
            <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
              <h2>MUSEUM OF CANDY</h2>
              <img
                :src="images.image3"
                alt="lolli"
                class="d-none d-lg-inline"
              />
              <p class="lead">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque,
                iste molestiae beatae, maiores deserunt in voluptatibus
                aspernatur architecto excepturi delectus soluta? Ipsa, deleniti
                dolorem hic consequatur repellat eveniet quidem voluptate
                necessitatibus dolorum delectus minus vitae, ut, veritatis sint
                ipsum magnam autem nam ex deserunt debitis eaque ratione! Nobis,
                quidem assumenda.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script> -->
  </body>
</template>

<!-- <script>
function () {
  document.scroll(function () {
    var $nav = $("#mainNavbar");
    $nav.toggleClass("scrolled", $(this).scrollTop() > $nav.height());
  });
};
</script> -->
<!-- <script setup>
import profile from "@/assets/candy image/hand2.png";
</script> -->

<script setup>
import { ref } from "vue";
import hand2 from "@/candy image/hand2.png";
import milk from "@/candy image/milk.png";
import lolli from "@/candy image/lolli_icon.png";
import gumball from "@/candy image/gumball.png";
import sprinkles from "@/candy image/sprinkles.png";
const images = ref({
  image1: hand2,
  image2: milk,
  image3: lolli,
  image4: gumball,
  image5: sprinkles,
});
// const imageMilk = ref({ image2: milk });
// const imageLolli = ref({ image3: lolli });
// const imageGumball = ref({ image4: gumball });
// const imageSprinkles = ref({ image5: sprinkles });
</script>
<style scoped>
body {
  background: #f5d9d5;
  font-family: "Nunito", sans-serif;
}

.top-fixed {
  position: fixed;
  top: 0;
  right: 0;
  left: 0;
  z-index: 2;
}

.blurb h2 {
  color: #ea1c2c;
  font-weight: 100;
  font-size: 2.5rem;
}

.blurb p {
  color: #f498b8;
  font-weight: 100;
  font-size: 1.125rem;
  line-height: 2;
}

.content {
  margin-top: 100px;
  margin-bottom: 100px;
}

#mainNavbar {
  font-size: 1.5rem;
  font-weight: 100;
  /* background-color: #d3a7f8; */
}

#mainNavbar .nav-link {
  color: white;
}

#mainNavbar .nav-link:hover {
  color: #ea1c2c;
}

#mainNavbar .navbar-brand {
  color: #ea1c2c;
  font-size: 1.5rem;
}

#headingGroup span {
  color: #ea1c2c;
}

#headingGroup h1 {
  font-weight: 100;
  font-size: 4rem;
}

.navbar.scrolled {
  background: rgb(222, 192, 222);
  transition: background 500ms;
}

@media (max-width: 1200px) {
  #headingGroup h1 {
    font-weight: 100;
    font-size: 3rem;
  }
  .blurb h2 {
    font-size: 2rem;
  }
}
.new {
  font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
  padding: 0.5rem;
  font-size: 1.5rem;
}
</style>
