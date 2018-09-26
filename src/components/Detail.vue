<template>
  <div class="detail">
    <div class="container">

      <h1 class="detail__title">
        <span>
          <div class="detail__title-left"></div>
          How it Works?
          <div class="detail__title-right"></div>
        </span>
      </h1>

      <div class="l-row l-row--stretch l-row--responsive">
        <div class="detail__column hide-down">
          <img src="../assets/git.svg" alt="">
          <h2>High Quality</h2>
          <p>Minima ut aut amet quidem. Non id ea unde magni. A possimus ut porro quis officiis enim et est. Facilis fugit nemo est sed dicta a. Nulla ducimus tempore et dolore aperiam consectetur consequuntur sunt et. Tempora fuga in iste fuga voluptas vitae non.</p>
        </div>

        <div class="detail__column hide-down">
          <img src="../assets/git.svg" alt="">
          <h2>Complex trades</h2>
          <p>Minima ut aut amet quidem. Non id ea unde magni. A possimus ut porro quis officiis enim et est. Facilis fugit nemo est sed dicta a. Nulla ducimus tempore et dolore aperiam consectetur consequuntur sunt et. Tempora fuga in iste fuga voluptas vitae non.</p>
        </div>

        <div class="detail__column hide-down">
          <img src="../assets/git.svg" alt="">
          <h2>Cross-chain trading</h2>
          <p>Minima ut aut amet quidem. Non id ea unde magni. A possimus ut porro quis officiis enim et est. Facilis fugit nemo est sed dicta a. Nulla ducimus tempore et dolore aperiam consectetur consequuntur sunt et. Tempora fuga in iste fuga voluptas vitae non.</p>
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
    
    &:hover {
      border-radius: 30px;
      box-shadow: 2px 2px 20px #ccc;
      transition: .5s;
    }
  }
}

.hide-down {
  transform: translateY(50px);
  opacity: 0.1;
}

.is-in-view {
  transition: opacity .5s .3s, transform .5s .3s;
  transform: none;
  opacity: 1;
}

</style>
