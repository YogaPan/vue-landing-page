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
          <img src="../assets/git.svg" alt="">
          <h2>{{ $t("detail.title-1") }}</h2>
          <p>{{ $t("detail.content-1") }}</p>
        </div>

        <div class="detail__column hide-down pop-order-2">
          <img src="../assets/git.svg" alt="">
          <h2>{{ $t("detail.title-2") }}</h2>
          <p>{{ $t("detail.content-2") }}</p>
        </div>

        <div class="detail__column hide-down pop-order-3">
          <img src="../assets/git.svg" alt="">
          <h2>{{ $t("detail.title-3") }}</h2>
          <p>{{ $t("detail.content-3") }}</p>
        </div>
      </div>
      
    </div>
  </div>
</template>

<script>

export default {
  name: 'Detail',
  mounted() {
    var items = document.querySelectorAll(".hide-down")
 
    const callbackFunc = () => {
      for (let i = 0; i < items.length; i++) {
        if (this.isElementInViewport(items[i])) {
          items[i].classList.add("is-in-view")
        }
      }
    }
    
    window.addEventListener("load", callbackFunc)
    window.addEventListener("scroll", callbackFunc)
  },
  methods: {
    isElementInViewport: function(el) {
      const rect = el.getBoundingClientRect()

      return (
        rect.top >= 0 &&
        rect.left >= 0 &&
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
        rect.right <= (window.innerWidth || document.documentElement.clientWidth)
      )
    }
  }
}

</script>

<style lang="scss">

.detail {
  background-color: $white;
  padding: 100px 0;

  &__title {
    margin-bottom: 30px;

    color: $dark;
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
      background-color: $dark;

      &::after {
        content: "";
        position: absolute;

        top: 50%;
        left: 0;
        transform: translateY(-50%);

        height: 10px;
        width: 10px;
        border-radius: 50%;
        background-color: $dark;
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
      background-color: $dark;

      &::after {
        content: "";
        position: absolute;

        top: 50%;
        right: 0;
        transform: translateY(-50%);

        height: 10px;
        width: 10px;
        border-radius: 50%;
        background-color: $dark;
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
    }

    h2 {
      font-size: 18px;
      color: $dark;
      text-align: center;
      margin-top: 30px;
    }

    p {
      margin-top: 30px;
      text-align: center;
    }
    
    // &:hover {
    //   border-radius: 30px;
    //   box-shadow: 2px 2px 20px #ccc;
    //   transition: .5s;
    // }
  }
}

.detail__column.hide-down {
  transform: translateY(50px);
  opacity: 0.1;
}

.detail__column.is-in-view {
  transition: opacity .5s, transform .5s;
  // transition: opacity .5s linear 10s, transform .5s  linear 10s;
  transform: none;
  opacity: 1;
}

.detail__column.pop-order-1 {
  transition-delay: .1s;
}

.detail__column.pop-order-2 {
  transition-delay: .3s;
}

.detail__column.pop-order-3 {
  transition-delay: .5s;
}

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
}

</style>
