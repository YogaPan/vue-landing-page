<template>
  <div class="roadmap">
    <div class="roadmap__title">
      <h1>{{ $t("roadmap.roadmap") }}</h1>
    </div>

    <ul>
      <li class="roadmap__line roadmap__line--pass">
        <div id="2018-Q4" class="roadmap__content hide-left">
          <h1>2018 Q4</h1>
          <ul>
            <li>{{ $t("roadmap.2018-Q4-1") }}</li>
            <li>{{ $t("roadmap.2018-Q4-2") }}</li>
          </ul>
        </div>
      </li>

      <!-- <div class="roadmap__now">
        <h1>NOW</h1>
      </div> -->

      <li class="roadmap__line">
        <div id="2019-Q1" class="roadmap__content hide-right">
          <h1>2019 Q1</h1>
          <ul>
            <li>{{ $t("roadmap.2019-Q1-1") }}</li>
          </ul>
        </div>
      </li>

      <li class="roadmap__line">
        <div id="2019-Q2" class="roadmap__content hide-left">
          <h1>2019 Q2</h1>
          <ul>
            <li>{{ $t("roadmap.2019-Q2-1") }}</li>
            <li>{{ $t("roadmap.2019-Q2-2") }}</li>
          </ul>
        </div>
      </li>

      <li class="roadmap__line">
        <div id="2019-Q3" class="roadmap__content hide-right">
          <h1>2019 Q3</h1>
          <ul>
            <li>{{ $t("roadmap.2019-Q3-1") }}</li>
            <li>{{ $t("roadmap.2019-Q3-2") }}</li>
            <li>{{ $t("roadmap.2019-Q3-3") }}</li>
          </ul>
        </div>
      </li>

      <li class="roadmap__line">
        <div id="2019-Q4" class="roadmap__content hide-left">
          <h1>2019 Q4</h1>
          <ul>
            <li>{{ $t("roadmap.2019-Q4-1") }}</li>
          </ul>
        </div>
      </li>
    </ul>

    <div class="roadmap__future">
      <h1>{{ $t("roadmap.future") }}</h1>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Roadmap',
  mounted() {
    // TODO
  },
}
</script>

<style lang="scss">

.roadmap {
  display: relative;

  min-height: 1000px;
  padding: 50px 0;
  overflow: hidden;

  background-color: $background-white;

  &__line {
    position: relative;

    margin: 0 auto;
    padding-top: 20px;
    padding-bottom: 20px;

    width: 3px;
    background-color: $light-blue;

    &:after {
      content: '';
      position: absolute;

      left: 50%;
      top: 50%;
      width: 15px;
      height: 15px;
      transform: translateX(-50%) translateY(-50%);

      border: 3px $light-blue solid;
      border-radius: 50%;
      background: $background-white;
    }

    &:nth-child(odd) div {
      left: -250px;
    }

    &:nth-child(even) div {
      left: 80px;
    }

    &--pass {
      background-color: $blue;

      &:after {
        border-color: $blue;
      }
    }
  }

  &__content {
    position: relative;

    width: 10000px;
    padding: 15px 0;

    text-align: left;

    h1 {
      margin-bottom: 10px;
      font-weight: 300;
    }

    li {
      list-style-type: disc;
    }
  }

  &__future, &__title {
    display: flex;
    align-items: center;
    justify-content: center;

    margin: 0 auto;

    width: 200px;
    height: 75px;

    border: 3px solid $blue;
    border-radius: 20px;

    h1 {
      color: $blue;
      font-size: $button-text-size;
    }
  }
}


@media (max-width: $break-small) {
  .roadmap {
    &__line {
      margin-left: 20px;

      &:nth-child(odd) div {
        left: 70px;
      }

      &:nth-child(even) div {
        left: 70px;
      }
    }

    &__title {
      margin-bottom: 50px;
    }

    &__future {
      margin-top: 50px;
    }
  }
}

.roadmap__content.hide-left {
  transform: translateX(-100px);
  opacity: 0.1;

  @media (max-width: $break-small) {
    transform: translateX(-50px);
  }
}

.roadmap__content.hide-right {
  transform: translateX(100px);
  opacity: 0;

  // 當在手機上時，都從左邊滑入
  @media (max-width: $break-small) {
    transform: translateX(-50px);
  }
}

.roadmap__content.is-in-view {
  transition: .5s;
  transform: none;
  opacity: 1;
}

</style>
