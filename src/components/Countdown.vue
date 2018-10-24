<template>
  <div class="countdown l-column l-column--stretch">

    <div class="countdown__title l-column l-column--stretch">
      <!-- <h1>ICO start on </h1>
      <h1>September 30, 2018</h1> -->
      <h1>{{ $t("hero.ico-date") }}</h1>
      <p>{{ $t("hero.time-left") }}<span class="blinking-cursor">:</span></p>
    </div>

    <div class="countdown__body l-row">
      <CountdownCircle v-bind:countdownNumber="dayString" v-bind:period_days="period_days" timeFormat="days"/>          
      <CountdownCircle v-bind:countdownNumber="hourString" timeFormat="hrs" />
      <CountdownCircle v-bind:countdownNumber="minuteString" timeFormat="min" />
      <CountdownCircle v-bind:countdownNumber="secondString" timeFormat="sec" />
    </div>

  </div>
</template>

<script>

import CountdownCircle from './CountdownCircle'

export default {
  name: 'Countdown',
  props: {
    startTime: Object.Date,
    endTime: Object.Date,
  },
  components: {
    CountdownCircle,
  },
  data() {
    return {
      timer: '',
      period_days: 0,
      days: 0,
      hours: 0,
      minutes: 0,
      seconds: 0,
    }
  },
  created() {
    const _second = 1000
    const _minute = _second * 60
    const _hour = _minute * 60
    const _day = _hour * 24

    const period_distance = this.endTime - this.startTime
    this.period_days = Math.floor(period_distance / _day)

    this.tick()
    this.timer = setInterval(this.tick, 1000)
  },
  methods: {
    tick() {
      const _second = 1000
      const _minute = _second * 60
      const _hour = _minute * 60
      const _day = _hour * 24

      const now = new Date()
      const distance = this.endTime - now

      if (distance < 0) {
        clearInterval(this.timer)
        this.days = this.hours = this.minutes = this.seconds = 0;
        return
      }

      this.days = Math.floor(distance / _day)
      this.hours = Math.floor((distance % _day) / _hour)
      this.minutes = Math.floor((distance % _hour) / _minute)
      this.seconds = Math.floor((distance % _minute) / _second)
    },
  },
  computed: {
    dayString() {
      return String(this.days).padStart(2, '0')
    },
    hourString() {
      return String(this.hours).padStart(2, '0')
    },
    minuteString() {
      return String(this.minutes).padStart(2, '0')
    },
    secondString() {
      return String(this.seconds).padStart(2, '0')
    },
  }
}

</script>

<style lang="scss">

.countdown {
  // flex: 0 0 350px;
  // padding: 150px 0;
  margin: 50px auto 0 auto;
  padding: 30px 0;
  max-width: 800px;

  background-color: #111;
  opacity: 0.9;
  border-radius: 30px;

  display: flex;
  flex-direction: column;
  align-items: stretch;
  justify-content: flex-start;

  &__title {
    padding-top: 10px;
    padding-bottom: 10px;

    h1 {
      font-size: 30px;
      color: $white;
      text-align: center;

      @media (max-width: $break-middle) {
        font-size: 30px;
      }
    }

    p {
      text-align: center;
      margin-top: 10px;
      font-size: 20px;
      font-weight: normal;
    }
  }

  @media (max-width: $break-middle) {
    flex-basis: 100%;
    margin-top: 40px;
  }
}

.blinking-cursor {
  animation: 1s blink step-end infinite;
}

@keyframes blink {
  from, to {
    color: transparent;
  }

  50% {
    color: $white;
  }
}

</style>