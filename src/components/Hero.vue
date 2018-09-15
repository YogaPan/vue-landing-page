<template>
  <div class="hero" v-bind:style="{ 'background-image': 'url(' + require('../assets/background.png')  + ')' }">
    <div id="particles-js"></div>
    <div id="main-info" class="container l-row">

    <div class="l-column">
      <h1 class="hero__title">Next generation blockchain-based betting gaming platform</h1>
      <p class="hero__content">Spirit is a global, community-driven, decentralized, secure and unique PvP gambling gaming platfrom..</p>
      <button class="whitepaper-button">White Paper</button>

      <div class="hero__social l-row l-row--from-start">

        <div class="social-icon">
          <img src="../assets/discord.svg" alt="">
        </div>

        <div class="social-icon">
          <img src="../assets/telegram.svg" alt="">
        </div>

      </div>

    </div>

    <Countdown
      countdownTitle="Time Left"
      v-bind:startTime="new Date(2018, 6, 14, 12, 12)"
      v-bind:endTime="new Date(2018, 9, 14, 12, 12)"
    />


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

    
  }
}

</script>

<style lang="scss" scoped>

.hero {
  @extend %content-in-center;

  min-height: 750px;
  padding: 50px 0;
  //background-color: $dark;
  //background-image: "../src/assets/background.png";
  color: $white;
  position: relative;

  // &__title {
    // margin-top: 30px;
    // font-size: 75px;
  // }

  &__content {
    margin-top: 3px;
  }

  &__social {
    margin-top: 30px;
  }
}

.l-column {
  width: 40%;
}

.whitepaper-button {
  margin-top: 30px;

  height: 60px;
  width: 225px;
  // border: 2px solid white;
  border: 2px solid $green;
  border-radius: 40px;

  display: flex;
  align-items: center;
  justify-content: center;

  background-color: transparent;
  font-size: 30px;
  font-weight: 100;
  // color: white;
  color: $green;

  &:hover {
    cursor: pointer;
  }

  &:focus {
    outline: 0;
  }
}

.skew {
  transform: skewY(-5deg) translateY(-70px);
}
// 保持內容正常顯示
.skew-back {
  transform: skewY(5deg) translateY(70px);
}

#particles-js {
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 0;
}

#main-info {
  z-index: 10;
}

</style>