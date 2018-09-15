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
  background-color: $dark;

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
