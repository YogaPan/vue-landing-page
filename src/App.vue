<template>
  <div id="app">

    <transition name="loading-fade">
      <div class="loading-scene" v-if="!loadComplete" ref="loading-scene">
        <div class="spinner">
          <div class="double-bounce-1"></div>
          <div class="double-bounce-2"></div>
        </div>
      </div>
    </transition>

    <Navbar />
    <Hero />
    <Describe />
    <Detail />
    <!-- <Ico /> -->
    <Roadmap />
    <Team />
    <Footer />

  </div>
</template>

<script>
import Navbar from './components/Navbar'
import Hero from './components/Hero'
import Describe from './components/Describe'
import Detail from './components/Detail'
import Ico from './components/Ico'
import Roadmap from './components/Roadmap'
import Team from './components/Team'
import Footer from './components/Footer'


export default {
  name: 'app',
  components: {
    Navbar,
    Hero,
    Describe,
    Detail,
    Ico,
    Roadmap,
    Team,
    Footer,
  },
  data() {
    return {
      loadComplete: false
    }
  },
  mounted() {
    window.addEventListener('load', () => {
      setTimeout(() => {
        this.loadComplete = true
      }, 2000)
    })
  }
}
</script>

<style lang="scss">

/* =============================== Initialize ===================================== */
/* Initialize box-model */
*, *::before, *::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

ul li {
  list-style-type: none;
}

a {
  text-decoration: none;

  &:focus {
    outline: 0;
  }
}

button {
  @extend %content-in-center;

  background-color: transparent;
  cursor: pointer;

  &:focus {
    outline: 0;
  }
}

/* ================================== Basic Style ======================================= */
@import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700');
@import url('https://fonts.googleapis.com/earlyaccess/notosanstc.css');

#app {
  width: 100%;
}

body {
  background-color: $background-black;
  font-family: 'Open Sans', 'Noto Sans TC', Helvetica, Arial, sans-serif;
  color: $black-content-color;  // All text inherit this color
}

h1 {
  font-size: $title-size;
  font-weight: 400;
}

p, li {
  font-size: $small-content-size;
  line-height: 1.5;
}

/* Customize chrome scrollbar */
::-webkit-scrollbar {
  width: 10px;

  &-track {
    background: $background-black;
  }

  &-thumb {
    background: $green;
    border-radius: 5px;

    &:hover {
      background: $green-hover;
    }
  }
}

/* ======================================= Layout ===================================== */
.container {
  margin: 0 auto;
  width: 100%;
  max-width: $container-max-width;
  padding: 0 20px;
}
 
.content-in-center {
  display: flex;
  align-items: center;
  justify-content: center;
}

.l-row {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-between;
}

.l-row--stretch {
  align-items: stretch;
}

.l-row--responsive {
  @media (max-width: $break-middle) {
    display: block;
  }
}

.l-column {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
}

.l-column--align-left {
  align-items: flex-start;
}

.l-column--stretch {
  align-items: stretch;
}

.l-row--from-start {
  justify-content: flex-start;
}

/* ===================================  Reuseable Components ==================================== */
.social-icon {
  // 內圈
  position: relative;  // for absolute content
  display: flex;
  align-items: center;
  justify-content: center;

  margin: 0 10px;
  border: 2px solid #aaa;
  border-radius: 50%;
  width: 75px;
  height: 75px;

  box-shadow:
    0 2px 1px rgba(0, 0, 0, 0.05),
    0 2px 3px rgba(0, 0, 0, 0.05),
    0 4px 8px rgba(0, 0, 0, 0.05);

  &:hover {
    cursor: pointer;
    transition: border-color .2s;
    border: 3px solid $background-white;

    }

  img {
    width: 45px;
    height: 45px;
    filter: invert(1);
  }
}

/* ================================ loading scene =================================== */
.loading-scene {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 99;  // alwayus on top

  height: 100vh;
  width: 100vw;
  background-color: $background-black;

  display: flex;
  align-items: center;
  justify-content: center;
}

.loading-fade-leave-active {
  transition: opacity .5s;
}
.loading-fade-leave-to {
  opacity: 0;
}

.spinner {
  width: 75px;
  height: 75px;

  position: relative;
}

.double-bounce-1, .double-bounce-2 {
  position: absolute;
  top: 0;
  left: 0;

  width: 100%;
  height: 100%;
  border-radius: 50%;
  background-color: $green;

  opacity: 0.6;
  animation: sk-bounce 2.0s infinite ease-in-out;
}

.double-bounce-2 {
  animation-delay: -1.0s;
}

@keyframes sk-bounce {
  0%, 100% { 
    transform: scale(0.0);
  }
  
  50% { 
    transform: scale(1.0);
  }
}

</style>
