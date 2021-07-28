<template>
  <div class="describe">
    <div class="describe__part-1">
      <div class="container l-row l-row--stretch l-row--responsive">
        <div class="describe__image">
          <img src="../assets/describe-1.png" alt="ethereum" />
        </div>

        <div class="describe__content hide-down">
          <h1 class="describe__title">{{ $t('describe.1.title') }}</h1>
          <p>{{ $t('describe.1.content1') }}</p>
          <p>{{ $t('describe.1.content2') }}</p>
        </div>
      </div>
    </div>

    <div class="describe__part-2 l-describe-reverse">
      <div class="container l-row l-row--responsive">
        <div class="describe__image">
          <img src="../assets/describe-2.png" alt="game" />
        </div>

        <div class="describe__content hide-down">
          <h1 class="describe__title">{{ $t('describe.2.title') }}</h1>
          <p>{{ $t('describe.2.content1') }}</p>
          <p>{{ $t('describe.2.content2') }}</p>
          <p>{{ $t('describe.2.content3') }}</p>
        </div>
      </div>
    </div>

    <div class="describe__part-3">
      <div class="container l-row l-row--stretch l-row--responsive">
        <div class="describe__image">
          <img src="../assets/describe-3-1.png" alt="ethereum" />
          <img src="../assets/describe-3-2.png" alt="ethereum" />
        </div>

        <div class="describe__content hide-down">
          <h1 class="describe__title">{{ $t('describe.3.title') }}</h1>
          <p>{{ $t('describe.3.content1') }}</p>
          <p>{{ $t('describe.3.content2') }}</p>
          <p>{{ $t('describe.3.content3') }}</p>
        </div>
      </div>
    </div>

    <div class="describe__part-4 l-describe-reverse">
      <div class="container l-row l-row--responsive">
        <div class="describe__image">
          <img src="../assets/describe-4-1.png" alt="ethereum" />
          <img src="../assets/describe-4-2.png" alt="ethereum" />
        </div>

        <div class="describe__content hide-down">
          <h1 class="describe__title">{{ $t('describe.4.title') }}</h1>
          <p>{{ $t('describe.4.content1') }}</p>
          <p>{{ $t('describe.4.content2') }}</p>
          <p>{{ $t('describe.4.content3') }}</p>
        </div>
      </div>
    </div>

    <div class="describe__part-5">
      <div class="container l-row l-row--stretch l-row--responsive">
        <div class="describe__image">
          <img src="../assets/describe-5.png" alt="game" />
        </div>

        <div class="describe__content hide-down">
          <h1 class="describe__title">{{ $t('describe.5.title') }}</h1>
          <p>{{ $t('describe.5.content1') }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Describe',
  mounted() {
    // TODO
  }
}
</script>

<style lang="scss">
.describe {
  &__part-1 {
    width: 100%;
    padding: 120px 0 60px 0;
    background-color: $background-white;

    @media (max-width: $break-middle) {
      padding: 50px 0;
    }

    img {
      width: 340px;
    }
  }

  &__part-2 {
    width: 100%;
    padding: 60px 0;
    background-color: $background-grey;

    @media (max-width: $break-middle) {
      padding: 50px 0;
    }

    img {
      width: 200px;
    }
  }

  &__part-3 {
    width: 100%;
    padding: 60px 0;
    background-color: $background-white;

    @media (max-width: $break-middle) {
      padding: 50px 0;
    }

    img {
      width: 180px;
      padding: 10px;
    }
  }

  &__part-4 {
    width: 100%;
    padding: 60px 0;
    background-color: $background-grey;

    @media (max-width: $break-middle) {
      padding: 50px 0;
    }

    img {
      width: 180px;
      padding: 10px;
    }
  }

  &__part-5 {
    width: 100%;
    padding: 60px 0;
    background-color: $background-white;

    @media (max-width: $break-middle) {
      padding: 50px 0;
    }

    img {
      width: 230px;
    }
  }

  &__image {
    @extend %content-in-center;

    flex: 0 0 400px;

    // img {
    //   width: 300px;
    //   height: 300px;
    // }
  }

  &__content {
    flex: 1 0 0;
    padding: 0 50px;

    @media (max-width: $break-middle) {
      margin-top: 50px;
      padding: 0;
    }

    h1 {
      font-size: $title-size;
      // font-weight: 100;
      text-align: left;
      color: $black-title-color;
    }

    p {
      margin-top: 30px;
      text-align: start;
      color: $black-content-color;
    }
  }
}

.l-describe-reverse {
  .describe__content {
    order: 1;
  }

  .describe__image {
    order: 2;
  }

  @media (max-width: $break-middle) {
    .describe__content {
      order: 0;
    }

    .describe__image {
      order: 0;
    }
  }
}

.describe__content.hide-down {
  transform: translateY(50px);
  opacity: 0;
}

.describe__content.is-in-view {
  transition: 0.5s 0.1s;
  transform: none;
  opacity: 1;
}
</style>
