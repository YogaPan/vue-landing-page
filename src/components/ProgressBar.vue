<template>
  <div id="progress-bar-container">
    <ChargeNumber />
  </div>
</template>

<script>
import ChargeNumber from './ChargeNumber'

export default {
  name: 'ProgressBar',
  components: {
    ChargeNumber
  },
  mounted() {
    // TODO
  }
}
</script>

<style>
#progress-bar-container {
  flex-basis: 100px;

  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
}
</style>
