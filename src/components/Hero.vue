<template>
  <div class="hero" v-bind:style="{ 'background-image': 'url(' + require('../assets/background.png')  + ')' }">
    <div id="particles-js"></div>

    <div id="main-info" class="container">
      <div class="hero__body">
        <h1 class="hero__title">Next generation blockchain-based betting gaming platform</h1>
        <p class="hero__content">Spirit is a global, community-driven, decentralized, secure and unique PvP gambling gaming platfrom..</p>

        <button class="whitepaper-button">White Paper</button>


        <!-- <div class="hero__social l-row">
          <div class="social-icon">
            <img src="../assets/discord.svg" alt="">
          </div>

          <div class="social-icon">
            <img src="../assets/telegram.svg" alt="">
          </div>
        </div> -->
      </div>

      <Countdown
        countdownTitle="Time Left"
        v-bind:startTime="new Date(2018, 6, 14, 12, 12)"
        v-bind:endTime="new Date(2018, 9, 14, 12, 12)"
      />
      
    </div>

    <div class="scroll-down" @click="scroll('describe')">
      <span></span>
    </div>
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
      "value": 80,
      "density": {
        "enable": true,
        "value_area": 800
      }
    },
    "color": {
      "value": "#1e5f6f"
    },
    "shape": {
      "type": "circle",
      "stroke": {
        "width": 0,
        "color": "#000000"
      },
      "polygon": {
        "nb_sides": 5
      },
      "image": {
        "src": "img/github.svg",
        "width": 100,
        "height": 100
      }
    },
    "opacity": {
      "value": 0.48927926008349276,
      "random": false,
      "anim": {
        "enable": false,
        "speed": 1,
        "opacity_min": 0.1,
        "sync": false
      }
    },
    "size": {
      "value": 3.5,
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
      "distance": 150,
      "color": "#00fff9",
      "opacity": 0.4,
      "width": 1
    },
    "move": {
      "enable": true,
      "speed": 6,
      "direction": "none",
      "random": false,
      "straight": false,
      "out_mode": "out",
      "bounce": false,
      "attract": {
        "enable": true,
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
        "distance": 202.70270270270254,
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
        top: document.getElementsByClassName(section)[0].offsetTop,
        behavior: "smooth"
      })
    },
  }
}

</script>

<style lang="scss" scoped>

.hero {
  min-height: 750px;
  padding: 170px 0;  // padding-top 70px is navbar's height.
  color: $white;
  position: relative;

  &::after {
    position: absolute;
    content: '';

    bottom: 0;
    left: 0;
    width: 100%;
    height: 80%;

    background: linear-gradient(to bottom,rgba(0,0,0,0) 0,rgba(0,0,0,.8) 80%,rgba(0,0,0,.8) 100%);
  }
 
  span {
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
  }

  &__social {
    margin-top: 30px;
    width: 500px;
  }

  @media (max-width: $break-small) {
    padding: 100px 0;  // padding-top 70px is navbar's height.
  }
}

// .l-column {
//   width: 40%;
// }

.whitepaper-button {
  @extend %content-in-center;

  margin-top: 30px;

  height: 75px;
  width: 225px;
  border: 0px solid $green;
  border-radius: 40px;

  background-color: rgb(108, 183, 176);
  font-size: 30px;
  font-weight: 100;
  color: $white;

  box-shadow: 0px 0px 10px 0px $green;

  &:hover {
    cursor: pointer;
    border: 3px solid $green;
  }

  &:focus {
    outline: 0;
  }
}

#particles-js {
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
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