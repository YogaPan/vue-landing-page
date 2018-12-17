<template>
  <div class="hero">
    <div id="particles-js"></div>

    <div id="main-info" class="container">
      <div class="hero__body">
        <h1 class="hero__title">{{ $t("hero.title") }}</h1>
        <p class="hero__content">{{ $t("hero.sub-title") }}</p>

        <button onclick="location.href='http://www.example.com'" type="button" class="whitepaper-button">White Paper</button>


        <div class="hero__social">
          <div class="social-icon">
            <img src="../assets/discord.svg" alt="">
          </div>

          <div class="social-icon">
            <img src="../assets/telegram.svg" alt="">
          </div>
        </div>
      </div>

      <Countdown
        v-bind:startTime="new Date(2018, 8, 14, 12, 12)"
        v-bind:endTime="new Date(2018, 11, 14, 12, 12)"
      />
      
    </div>

    <div class="scroll-down" @click="scroll('describe')">
      <span></span>
    </div>
    <img style="position: absolute;bottom: 0px;width: 100%;z-index: -1;opacity: 0.8;" src="../assets/background_earth.png" >
    <div src="/img/background_earth.84df4e2d.png" style="position: absolute;top: 0px;width: 100%; z-index: -2; height: 100%; background-color: #010101;"></div>
    <!-- <span class="scroll-down" @click="scroll('describe')"></span>
    <img style="position: absolute;bottom: 0px;width: 100%。;z-index: -1;opacity: 0.8;" src="../assets/background_earth.png" >
    <div src="/img/background_earth.84df4e2d.png" style="position: absolute;top: 0px;width: 100%; z-index: -2; height: 100%; background-color: #010101;"></div> -->

  </div>
</template>

<script>
//import particles from 'particles.js'
import Countdown from './Countdown'

export default {
  name: 'Hero',
  components: {
    Countdown,
  },
  mounted() {
    require('particles.js')
    this.$nextTick(() => {
      console.log(particlesJS)
      particlesJS('particles-js', {
  "particles": {
    "number": {
      "value": 232,
      "density": {
        "enable": true,
        "value_area": 1183
      }
    },
    "color": {
      "value": "#c0ffff"
    },
    "shape": {
      "type": "circle",
      "stroke": {
        "width": 4,
        "color": "#1ad2de"
      },
      "polygon": {
        "nb_sides": 3
      },
      "image": {
        "src": "img/github.svg",
        "width": 100,
        "height": 100
      }
    },
    "opacity": {
      "value": 1,
      "random": true,
      "anim": {
        "enable": false,
        "speed": 1.7582417582417584,
        "opacity_min": 0.7112887112887113,
        "sync": false
      }
    },
    "size": {
      "value": 2.4,
      "random": true,
      "anim": {
        "enable": false,
        "speed": 40,
        "size_min": 0.1,
        "sync": false
      }
    },
    "line_linked": {
      "enable": true,
      "distance": 130,
      "color": "#4194cf",
      "opacity": 0.49705773886831206,
      "width": 0.9
    },
    "move": {
      "enable": true,
      "speed": 1.0,
      "direction": "top",
      "random": true,
      "straight": false,
      "out_mode": "out",
      "bounce": false,
      "attract": {
        "enable": false,
        "rotateX": 600,
        "rotateY": 1200
      }
    }
  },
  "interactivity": {
    "detect_on": "canvas",
    "events": {
      "onhover": {
        "enable": true,
        "mode": "grab"
      },
      "onclick": {
        "enable": true,
        "mode": "push"
      },
      "resize": true
    },
    "modes": {
      "grab": {
        "distance": 170.53621458328246,
        "line_linked": {
          "opacity": 1
        }
      },
      "bubble": {
        "distance": 400,
        "size": 40,
        "duration": 2,
        "opacity": 8,
        "speed": 3
      },
      "repulse": {
        "distance": 200,
        "duration": 0.4
      },
      "push": {
        "particles_nb": 4
      },
      "remove": {
        "particles_nb": 2
      }
    }
  },
  "retina_detect": true
}, function() {
        console.log('callback - particles.js config loaded');
      });
    })

    
  },
  methods: {
    scroll(section) {
      window.scrollTo({
        top: document.getElementsByClassName(section)[0].offsetTop - 70,  // 70 is navbar height
        behavior: "smooth"
      })
    },
  }
}

</script>

<style lang="scss">

.hero {
  min-height: 100vh;
  padding: 120px 0 0 0;  // padding-top 70px is navbar's height.

  color: $white;
  position: relative;

  @media (max-width: $break-middle) {
    padding: 80px 0 0 0;
  }
 
  .scroll-down {
    position: absolute;
    z-index: 10;
    bottom: 50px;
    left: 50%;
    width: 46px;
    height: 46px;
    margin-left: -23px;

    border: 1px solid #fff;
    border-radius: 50%;

    &:hover {
      opacity: .5;
      cursor: pointer;
      transition: opacity .3s;
    }

    &::before {
      position: absolute;
      content: '';

      top: 0;
      left: 0;
      // z-index: -1;
      width: 44px;
      height: 44px;

      box-shadow: 0 0 0 0 rgba(255,255,255,.1);
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

      border-left: 1px solid #fff;
      border-bottom: 1px solid #fff;
      transform: rotate(-45deg);
    }
  }

  &__body {
    // text-align: center;
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  // &__title {
    // margin-top: 30px;
    // font-size: 75px;
  // }

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
}

.whitepaper-button {
  margin-top: 30px;

  height: 75px;
  width: 225px;
  border: none;
  border-radius: 40px;

  background-color: rgb(108, 183, 176);
  font-size: 30px;
  font-weight: 100;
  color: $white;

  // box-shadow: 0px 0px 10px 0px $green;
  transition: box-shadow .2s, background-color .2s;

  &:hover {
    background-color: $green;
    box-shadow: 0px 0px 15px 0px $green;
  }
}

#particles-js {
  position: absolute;
  display: block;
  width: 100%;
  height: 95%;
  top: 0;
  left: 0;
  z-index: 0;
  opacity: 0.5;
}

#main-info {
  z-index: 10;
  position: relative;
}

@keyframes shine {
  0% {
    opacity: 0;
  }
  30% {
    opacity: 1;
  }
  60% {
    box-shadow: 0 0 0 60px rgba(255,255,255,.1);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}

</style>