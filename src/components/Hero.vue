<template>
  <div class="hero">
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
    <img style="position: absolute;bottom: 0px;width: 100%;z-index: -1;opacity: 0.8;" src="../assets/background_earth.png" >
    <div src="/img/background_earth.84df4e2d.png" style="position: absolute;top: 0px;width: 100%; z-index: -2; height: 100%; background-color: #010101;"></div>
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
        "value_area": 1183.721462448409
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
      "speed": 1.5,
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

    
  }
}

</script>

<style lang="scss" scoped>

.hero {
  @extend %content-in-center;

  min-height: 810px;
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
  height: 90%;
  top: 0;
  left: 0;
  z-index: 0;
  opacity: 0.5;
}

#main-info {
  z-index: 10;
}

</style>