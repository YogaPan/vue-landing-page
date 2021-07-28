<template>
  <div class="hero">
    <div id="particles-js"></div>

    <div id="main-info" class="container">
      <div class="hero__body">
        <img class="hero__logo" src="../assets/spirit-logo.svg" />
        <h1 class="hero__title">{{ $t('hero.title') }}</h1>
        <p class="hero__content">{{ $t('hero.subTitle') }}</p>
        <a href="whitepaper_zh-TW.pdf" target="_blank">
          <button class="whitepaper-button">
            {{ $t('hero.whitepaperDownload') }}
          </button>
        </a>
      </div>
      <Countdown
        v-bind:startTime="new Date(2018, 8, 14, 12, 12)"
        v-bind:endTime="new Date(2018, 11, 14, 12, 12)"
      />
    </div>
    <div class="scroll-down" @click="scroll('describe')">
      <span />
    </div>
    <img class="hero__background" src="../assets/background_earth.png" />
  </div>
</template>

<script>
import 'particles.js'
// import Countdown from "./Countdown";

export default {
  name: 'Hero',
  components: {
    // Countdown,
  },
  mounted() {
    this.$nextTick(() => {
      window.particlesJS('particles-js', {
        particles: {
          number: {
            value: 232,
            density: {
              enable: true,
              value_area: 1183
            }
          },
          color: { value: '#c0ffff' },
          shape: {
            type: 'circle',
            stroke: {
              width: 4,
              color: '#1ad2de'
            },
            polygon: { nb_sides: 3 },
            image: {
              src: 'img/github.svg',
              width: 100,
              height: 100
            }
          },
          opacity: {
            value: 1,
            random: true,
            anim: {
              enable: false,
              speed: 1.7582417582417584,
              opacity_min: 0.7112887112887113,
              sync: false
            }
          },
          size: {
            value: 2.4,
            random: true,
            anim: {
              enable: false,
              speed: 40,
              size_min: 0.1,
              sync: false
            }
          },
          line_linked: {
            enable: true,
            distance: 130,
            color: '#4194cf',
            opacity: 0.49705773886831206,
            width: 0.9
          },
          move: {
            enable: true,
            speed: 1.0,
            direction: 'top',
            random: true,
            straight: false,
            out_mode: 'out',
            bounce: false,
            attract: {
              enable: false,
              rotateX: 600,
              rotateY: 1200
            }
          }
        },
        interactivity: {
          detect_on: 'canvas',
          events: {
            onhover: {
              enable: true,
              mode: 'grab'
            },
            onclick: {
              enable: true,
              mode: 'push'
            },
            resize: true
          },
          modes: {
            grab: {
              distance: 170.53621458328246,
              line_linked: { opacity: 1 }
            },
            bubble: {
              distance: 400,
              size: 40,
              duration: 2,
              opacity: 8,
              speed: 3
            },
            repulse: {
              distance: 200,
              duration: 0.4
            },
            push: { particles_nb: 4 },
            remove: { particles_nb: 2 }
          }
        },
        retina_detect: true
      })
    })
  },
  methods: {
    scroll(section) {
      window.scrollTo({
        top: document.getElementsByClassName(section)[0].offsetTop - 70, // 70 is navbar height
        behavior: 'smooth'
      })
    }
  }
}
</script>

<style lang="scss">
.hero {
  height: 100vh;
  min-height: 900px;
  padding: 120px 0 0 0; // padding-top 70px is navbar's height.

  background-color: #000; // For earth background
  color: $white-text-color;
  position: relative;

  @media (max-width: $break-middle) {
    min-height: 950px;
    padding: 80px 0 0 0;
  }

  .scroll-down {
    position: absolute;
    z-index: 1;
    bottom: 50px;
    left: 50%;
    width: 46px;
    height: 46px;
    margin-left: -23px;

    border: 1px solid $background-white;
    border-radius: 50%;

    &:hover {
      opacity: 0.5;
      cursor: pointer;
      transition: opacity 0.2s;
    }

    &::before {
      position: absolute;
      content: '';

      top: 0;
      left: 0;
      width: 44px;
      height: 44px;

      box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.1);
      border-radius: 50%;
      opacity: 0;
      animation: shine 2s infinite;
    }

    &::after {
      position: absolute;
      content: '';

      top: 50%;
      left: 50%;
      width: 16px;
      height: 16px;
      margin: -12px 0 0 -8px;

      border-left: 1px solid $background-white;
      border-bottom: 1px solid $background-white;
      transform: rotate(-45deg);
    }
  }

  &__body {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  // &__bottom {
  //   // display: flex;
  //   // flex-direction: row;
  //   // align-items: center;
  //   // justify-content: center;

  //   margin-top: 50px;
  // }

  &__logo {
    height: 300px;
    opacity: 0.95;
    margin: -40px;
  }

  &__title {
    margin-top: 30px;
  }

  &__content {
    margin-top: 30px;
    font-size: 18px;
  }

  &__social {
    margin-top: 30px;

    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
  }

  &__background {
    position: absolute;
    bottom: 0px;
    width: 100%;
    opacity: 0.8;
  }
}

.whitepaper-button {
  margin-top: 75px;

  height: 75px;
  width: 225px;
  border: none;
  border-radius: 40px;

  background-color: $green;
  font-size: 30px;
  font-weight: 100;
  color: $white-text-color;

  // box-shadow: 0px 0px 10px 0px $green;
  transition: box-shadow 0.2s, background-color 0.2s;

  &:hover {
    background-color: $green;
    box-shadow: 0px 0px 15px 0px $green-hover;
  }
}

#particles-js {
  position: absolute;
  display: block;
  width: 100%;
  height: 95%;
  top: 0;
  left: 0;
  z-index: 1;
  opacity: 0.5;

  &::after {
    position: absolute;
    content: '';

    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;

    background: linear-gradient(
      to top,
      rgba(0, 0, 0, 0) 0,
      rgba(0, 0, 0, 0) 30%,
      rgba(0, 0, 0, 0.8) 100%
    );
  }
}

#main-info {
  z-index: 1;
  position: relative;
  height: 100%;
}

@keyframes shine {
  0% {
    opacity: 0;
  }
  30% {
    opacity: 1;
  }
  60% {
    box-shadow: 0 0 0 60px rgba(255, 255, 255, 0.1);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
</style>
