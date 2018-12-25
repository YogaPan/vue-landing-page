<template>
  <div class="detail">
    <div class="container">

      <h1 class="detail__title">
        <span>
          <div class="detail__title-left"></div>
          {{ $t("detail.title") }}
          <div class="detail__title-right"></div>
        </span>
      </h1>

      <div class="l-row l-row--stretch l-row--responsive">
        <div class="detail__column hide-down pop-order-1">
          <img src="../assets/detail-1.svg" alt="">
          <h2>{{ $t("detail.title-1") }}</h2>
          <p>{{ $t("detail.content-1-1") }}</p>
          <p>{{ $t("detail.content-1-2") }}</p>
        </div>

        <div class="detail__column hide-down pop-order-2">
          <img src="../assets/detail-2.svg" alt="">
          <h2>{{ $t("detail.title-2") }}</h2>
          <p>{{ $t("detail.content-2-1") }}</p>
          <p>{{ $t("detail.content-2-2") }}</p>
        </div>

        <div class="detail__column hide-down pop-order-3">
          <img src="../assets/detail-3.svg" alt="">
          <h2>{{ $t("detail.title-3") }}</h2>
          <p>{{ $t("detail.content-3-1") }}</p>
          <p>{{ $t("detail.content-3-2") }}</p>
        </div>

        <!-- <div class="detail__column hide-down pop-order-4">
          <img src="../assets/detail-4.svg" alt="">
          <h2>{{ $t("detail.title-4") }}</h2>
          <p>{{ $t("detail.content-4-1") }}</p>
          <p>{{ $t("detail.content-4-2") }}</p>
        </div> -->
      </div>
      
    </div>
  </div>
</template>

<script>

export default {
  name: 'Detail',
  mounted() {
    // TODO
  },
}

</script>

<style lang="scss">

.detail {
  background-color: $background-white;
  padding: 60px 0;

  &__title {
    margin-bottom: 30px;

    color: $black-title-color;
    text-align: center;

    span {
      position: relative;
    }

    &-left {
      position: absolute;
      left: -125px;
      top: 50%;
      transform: translateY(-50%);

      height: 2px;
      width: 100px;
      background-color: $black-title-color;

      &::after {
        content: "";
        position: absolute;

        top: 50%;
        left: 0;
        transform: translateY(-50%);

        height: 10px;
        width: 10px;
        border-radius: 50%;
        background-color: $black-title-color;
      }

      @media (max-width: $break-middle) {
        display: none;
      }
    }

    &-right {
      position: absolute;
      right: -125px;
      top: 50%;
      transform: translateY(-50%);

      height: 2px;
      width: 100px;
      background-color: $black-title-color;

      &::after {
        content: "";
        position: absolute;

        top: 50%;
        right: 0;
        transform: translateY(-50%);

        height: 10px;
        width: 10px;
        border-radius: 50%;
        background-color: $black-title-color;
      }

      @media (max-width: $break-middle) {
        display: none;
      }
    }
  }

  &__column {
    flex: 1 0 0;
    min-width: 300px;

    padding: 50px 30px;

    img {
      display: block;
      margin: 0 auto;
      height: 100px;
    }

    h2 {
      font-size: $subtitle-size;
      color: $black-title-color;
      text-align: center;
      margin-top: 30px;
    }

    p {
      margin-top: 30px;
      text-align: start;
      word-break: break-all;
    } 
  }
}

.detail__column.hide-down {
  transform: translateY(50px);
  opacity: 0;
}

.detail__column.is-in-view {
  transition: opacity .5s, transform .5s;
  transform: none;
  opacity: 1;
}

// 由左至右漸層效果
.detail__column.pop-order-1 {
  transition-delay: .1s;
}

.detail__column.pop-order-2 {
  transition-delay: .3s;
}

.detail__column.pop-order-3 {
  transition-delay: .5s;
}

.detail__column.pop-order-4 {
  transition-delay: .7s;
}

// 在手機上沒有漸層動畫效果
@media (max-width: $break-middle) {
  .detail__column.pop-order-1 {
    transition-delay: .1s;
  }

  .detail__column.pop-order-2 {
    transition-delay: .1s;
  }

  .detail__column.pop-order-3 {
    transition-delay: .1s;
  }

  .detail__column.pop-order-4 {
    transition-delay: .1s;
  }
}

</style>
