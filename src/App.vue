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
    <Token />
    <Roadmap />
    <!-- <Team /> -->
    <Team2 />
    <Footer />

  </div>
</template>

<script>
import Navbar from './components/Navbar'
import Hero from './components/Hero'
import Describe from './components/Describe'
import Detail from './components/Detail'
import Token from './components/Token'
import Roadmap from './components/Roadmap'
// import Team from './components/Team'
import Team2 from './components/Team-2'
import Footer from './components/Footer'


export default {
  name: 'app',
  components: {
    Navbar,
    Hero,
    Describe,
    Detail,
    Token,
    Roadmap,
    // Team,
    Team2,
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

@import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700');
@import url('https://fonts.googleapis.com/earlyaccess/notosanstc.css');

body {
  background-color: $dark;
  font-family: 'Open Sans', 'Noto Sans TC', Helvetica, Arial, sans-serif;
  // font-family: 'Asap', Helvetica, Arial, sans-serif;
  // font-family: 'Roboto', Helvetica, Arial, sans-serif;
  color: #2c3e50;
}

h1 {
  font-size: 40px;
  font-weight: 400;
}

p, li {
  font-size: 16px;
  line-height: 1.5;
}

/* Customize chrome scrollbar */
::-webkit-scrollbar {
  width: 10px;

  &-track {
    background: rgb(10, 12, 18);
  }

  &-thumb {
    background: rgb(110, 196, 187);
    border-radius: 5px;

    &:hover {
      background: rgb(128, 203, 196);
    }
  }
}

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
    // border-color: #fff;
    border: 3px solid #fff;

    }

  img {
    width: 45px;
    height: 45px;
    filter: invert(1);
  }

  svg {
    position: absolute;

    circle {
      stroke: #ddd;
      stroke-width: 3;
      stroke-dasharray: 300;
      stroke-dashoffset: 300;
      fill: none;
    }
  }

  svg:hover {
    circle {
      // stroke-width: 10;
      transition: stroke-dashoffset ease .75s;
      stroke-dashoffset: 0;
    }
  }

  svg.in-view {
    
  }
}

#app {
  width: 100%;
}

.loading-scene {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 99;

  height: 100vh;
  width: 100vw;
  background-color: #000;

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
