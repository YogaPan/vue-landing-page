<template>
  <div class="describe">

    <div class="describe__part-1">
      <div class="container l-row l-row--stretch l-row--responsive">

        <div class="describe__image">
          <img src="../assets/ethereum.svg" alt="ethereum">
        </div>

        <div class="describe__content hide-down">
          <h1 class="describe__title">{{ $t("describe.title-1") }}</h1>
          <p>{{ $t("describe.content-1") }}</p>
        </div>

      </div>
    </div>

    <div class="describe__part-2 l-describe-reverse">
      <div class="container l-row l-row--responsive">

        <div class="describe__image">
          <img src="../assets/game.svg" alt="game">
        </div>

        <div class="describe__content hide-down">
          <h1 class="describe__title">{{ $t("describe.title-2") }}</h1>
          <p>{{ $t("describe.content-2") }}</p>
        </div>

      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'Describe',
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
        rect.bottom >= 0 &&
        rect.left >= 0 &&
        rect.top <= (window.innerHeight || document.documentElement.clientHeight) &&
        rect.right <= (window.innerWidth || document.documentElement.clientWidth)
      )
    }
  }
}

</script>

<style lang="scss">

.describe {
  &__part-1 {
    width: 100%;
    padding: 100px 0;
    background-color: $white;

    @media (max-width: $break-middle) {
      padding: 50px 0;
    }
  }

  &__part-2 {
    width: 100%;
    padding: 100px 0;
    background-color: #e8e8e8;

    @media (max-width: $break-middle) {
      padding: 50px 0;
    }
  }

  &__image {
    @extend %content-in-center;

    flex: 0 0 400px;

    img {
      width: 300px;
      height: 300px;
    }
  }

  &__content {
    flex: 1 0 0;
    padding: 0 50px;

    @media (max-width: $break-middle) {
      margin-top: 50px;
      padding: 0;
    }

    h1 {
      font-size: 40px;
      // font-weight: 100;
      text-align: left;
      color: $dark;
    }

    p {
      margin-top: 30px;
      text-align: start;
      color: $dark;
    }
  }
}

.l-describe-reverse {
  .describe__content {
    order: 1
  }

  .describe__image {
    order: 2;
  }

  @media (max-width: $break-middle) {
    .describe__content {
      order: 0
    }

    .describe__image {
      order: 0;
    }
  }
}

.describe__content.hide-down {
  transform: translateY(50px);
  opacity: 0.1;
}

.describe__content.is-in-view {
  transition: .5s .1s;
  transform: none;
  opacity: 1;
}

</style>