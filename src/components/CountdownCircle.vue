<template>
  <div class="countdown__timer">

    <h1 class="countdown__number">{{ countdownNumber }}<span class="countdown__time-format">{{ timeFormat }}</span></h1>
    <svg class="countdown__circle">
      <circle class="countdown__inside-circle" r="45" cx="75" cy="75"></circle>
      <circle ref="outsideCircle" class="countdown__outside-circle" r="60" cx="75" cy="75"></circle>
    </svg>

  </div>
</template>

<script>

export default {
  name: 'CountdownCircle',
  props: {
    period_days: Number,
    countdownNumber: String,
    timeFormat: String,
  },
  mounted() {
    let start_point
    const _perimeter = 376.8

    switch (this.timeFormat) {
      case 'days':
        this.$refs.outsideCircle.style.strokeDashoffset = (1 - this.countdownNumber / this.period_days) * _perimeter
        break
      case 'hrs':
        this.$refs.outsideCircle.style.strokeDashoffset = (1 - this.countdownNumber / 24) * _perimeter
        break
      case 'min':
        this.$refs.outsideCircle.style.strokeDashoffset = (1 - this.countdownNumber / 60) * _perimeter
        break
      case 'sec':
        start_point =  -(60 - this.countdownNumber)
        // console.log(start_point)
        // animation: spin-countdown 60s linear infinite forwards;
        this.$refs.outsideCircle.style.animation = `spin-countdown 60s linear ${start_point}s infinite forwards`
        break
      // }
    }
  },
  watch: {
    countdownNumber: function() {
      switch(this.timeFormat) {
        case 'days':
          this.$refs.outsideCircle.style.strokeDashoffset = (1 - this.countdownNumber / 10) * _perimeter
          break
        case 'hrs':
          this.$refs.outsideCircle.style.strokeDashoffset = (1 - this.countdownNumber / 24) * _perimeter
          break
        case 'min':
          this.$refs.outsideCircle.style.strokeDashoffset = (1 - this.countdownNumber / 60) * _perimeter
          break
      }
    },
  },
}

</script>

<style lang="scss" scoped>

.countdown {
  &__timer {
    @extend %content-in-center;
  
    position: relative;
    height: 150px;
    width: 150px;

    transition: transform .2s;

    &:hover {
      transform: scale(1.2);
    }
  }

  &__number {
    color: $white;
    font-size: 40px;
  }

  &__time-format {
    font-size: 15px;
  }

  &__circle {
    position: absolute;
    top: 0;
    width: 150px;
    height: 150px;
    
    /* transform: rotateY(-180deg) rotateZ(-90deg); */
    transform: rotateZ(-90deg);
  }

  &__inside-circle {
    stroke-dasharray: 47.1px;
    stroke-dashoffset: 0px;
    stroke-width: 3px;
    stroke: white;
    fill: none;
    animation: spin 5s linear infinite forwards;
  }

  &__outside-circle {
    stroke-dasharray: 376.8px;
    stroke-dashoffset: 0px;
    stroke-linecap: round;
    stroke-width: 6px;
    stroke: $green;
    fill: none;
    // animation: spin-countdown 60s linear infinite forwards;
  }
}

@keyframes spin {
  from {
    stroke-dashoffset: 94.2px;
  }
  
  to {
    stroke-dashoffset: 0px;
  }
}

@keyframes spin-countdown {
  0% {
    stroke-dashoffset: 376.8px;
  }

  1% {
    stroke-dashoffset: 3px;
  }
  
  100% {
    stroke-dashoffset: 376.8px;
  }
}

</style>
