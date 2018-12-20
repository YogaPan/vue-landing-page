<template>
  <div class="ico">
    <div class="container">
      <h1 class="ico__title">
        <span>
          <div class="ico__title-left"></div>
          ICO
          <div class="ico__title-right"></div>
        </span>
      </h1>

      <div class="l-row l-row--responsive">
        <div class="ico__left">
          <div class="token__svg-wrapper">

            <p class="token__number">{{percentage}}%</p>
            <svg class="token__svg" ref="svg">
              <circle
                id="token-sale-circle"
                class="hide"
                v-bind:class="{active: this.activeState.tokenSale, 'is-in-view': this.isInView}"
                @mouseover="hover"
                r="100" cx="50%" cy="50%"
              ></circle>
              <circle
                id="community-develop-circle"
                class="hide"
                v-bind:class="{active: this.activeState.communityDevelop, 'is-in-view': this.isInView}"
                @mouseover="hover"
                r="100" cx="50%" cy="50%"
              ></circle>
              <circle
                id="marketing-circle"
                class="hide"
                v-bind:class="{active: this.activeState.marketing, 'is-in-view': this.isInView}"
                @mouseover="hover"
                r="100" cx="50%" cy="50%"
              ></circle>
              <circle
                id="team-circle"
                class="hide"
                v-bind:class="{active: this.activeState.team, 'is-in-view': this.isInView}"
                @mouseover="hover"
                r="100" cx="50%" cy="50%"
              ></circle>
              <circle
                id="future-preserve-circle"
                class="hide"
                v-bind:class="{active: this.activeState.futurePreserve, 'is-in-view': this.isInView}"
                @mouseover="hover"
                r="100" cx="50%" cy="50%"
              ></circle>
            </svg>

          </div>

          <ul class="token__list">

            <li>
              <div
                id="token-sale-list"
                v-bind:class="{active: this.activeState.tokenSale}"
                @mouseover="hover"
              >
                <span>{{ $t("ico.token-sale") }}</span>
                <span>20%</span>
              </div>
            </li>

            <li>
              <div 
                id="community-develop-list"
                v-bind:class="{active: this.activeState.communityDevelop}"
                @mouseover="hover"
              >
                <span>{{ $t("ico.community-develop") }}</span>
                <span>40%</span>
              </div>
            </li>

            <li>
              <div
                id="marketing-list"
                v-bind:class="{active: this.activeState.marketing}"
                @mouseover="hover"
              >
                <span>{{ $t("ico.marketing") }}</span>
                <span>10%</span>
              </div>
            </li>
            
            <li>
              <div
                id="team-list"
                v-bind:class="{active: this.activeState.team}"
                @mouseover="hover"
              >
                <span>{{ $t("ico.team") }}</span>
                <span>10%</span>
              </div>
            </li>
            
            <li>
              <div
                id="future-preserve-list"
                v-bind:class="{active: this.activeState.futurePreserve}"
                @mouseover="hover"
              >
                <span>{{ $t("ico.future-preserve") }}</span>
                <span>20%</span>
              </div>
            </li>
            
          </ul>

        </div>

        <div class="ico__right">
          
          <table class="ico__table">
            <tbody>
              <tr>
                <td>{{ $t("ico.token-sale-volume") }}</td>
                <td>{{ $t("ico.token-sale-volume-value") }}</td>
              </tr>
              <tr>
                <td>{{ $t("ico.distribution-of-tokens") }}</td>
                <td>{{ $t("ico.distribution-of-tokens-value") }}</td>
              </tr>
              <tr>
                <td>{{ $t("ico.token-price-at-issue") }}</td>
                <td>{{ $t("ico.token-price-at-issue-value") }}</td>
              </tr>
              <tr>
                <td>{{ $t("ico.public-presale-start-date") }}</td>
                <td>{{ $t("ico.public-presale-start-date-value") }}</td>
              </tr>
              <tr>
                <td>{{ $t("ico.public-presale-end-date") }}</td>
                <td>{{ $t("ico.public-presale-end-date-value") }}</td>
              </tr>            
            </tbody>
          </table>

        </div>
      </div>

    </div>
  </div>
</template>

<script>

export default {
  name: 'Ico',
  data() {
    return {
      activeState: {
        tokenSale: true,  // 預設放大
        communityDevelop: false,
        marketing: false,
        team: false,
        futurePreserve: false,
      },
      isInView: false,
      percentage: 20,  // 預設為 token-sale 的百分比
    }
  },
  mounted() {
    const callbackFunc = () => {
      if (this.isElementInViewport(this.$refs.svg)) {
        this.isInView = true
      }
    }
    
    window.addEventListener("load", callbackFunc)
    window.addEventListener("scroll", callbackFunc)
  },
  methods: {
    hover: function (event) {
      switch (event.target.id) {
        case 'token-sale-circle':
        case 'token-sale-list':
          this.percentage = 20
          this.activeState = {
            tokenSale: true,
            communityDevelop: false,
            marketing: false,
            team: false,
            futurePreserve: false,
          }
          break
        case 'community-develop-circle':
        case 'community-develop-list':
          this.percentage = 40
          this.activeState = {
            tokenSale: false,
            communityDevelop: true,
            marketing: false,
            team: false,
            futurePreserve: false,
          }
          break
        case 'marketing-circle':
        case 'marketing-list':
          this.percentage = 10
          this.activeState = {
            tokenSale: false,
            communityDevelop: false,
            marketing: true,
            team: false,
            futurePreserve: false,
          }
          break
        case 'team-circle':
        case 'team-list':
          this.percentage = 10
          this.activeState = {
            tokenSale: false,
            communityDevelop: false,
            marketing: false,
            team: true,
            futurePreserve: false,
          }
          break
        case 'future-preserve-circle':
        case 'future-preserve-list':
          this.percentage = 20
          this.activeState = {
            tokenSale: false,
            communityDevelop: false,
            marketing: false,
            team: false,
            futurePreserve: true,
          }
          break
      }
    },

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

$token-sale-color: #fe554c;
$community-develop-color: #1ab49c;
$marketing-color: #00a6ac;
$team-color: #1497fc;
$future-preserve-color: #8881f0;

%token-column {
  width: 50%;

  @media (max-width: $break-middle) {
    width: 100%;
  }
}

.ico {
  padding: 100px 0;
  background-color: $background-grey;

  &__left {
    @extend %token-column;

    text-align: center;
    // max-width: 400px;
  }

  &__right {
    @extend %token-column;
    @extend %content-in-center;

    @media (max-width: $break-middle) {
      margin-top: 50px;
    }
  }

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

  &__table {
    border-collapse: collapse;
    text-align: left;
    font-size: $small-content-size;

    tr:hover {
      background-color: #dfdfdf;
      transition: .2s;
    }

    td, th {
      border-bottom: 1px solid #ccc;
      padding: 15px 0 10px ;
    }

    // left
    td:first-child {
      width: 100px;
    }

    // right
    td:nth-child(2) {
      padding-left: 20px;
    }
  }
}

.token {
  &__svg-wrapper {
    position: relative;
  }

  &__number {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translateX(-50%) translateY(-50%);

    font-weight: 600;
    font-size: $button-text-size;
  }

  &__svg {
    height: 300px;
    width: 300px;

    text-align: center;
    transform: rotateZ(-90deg);

    circle {
      stroke-width: 30px;
      fill: none;
      cursor: pointer;
      transition: stroke-dasharray .5s .3s, stroke-width .3s;
    }
    circle.active {
      stroke-width: 40px;
    }
    circle.hide {
      stroke-dasharray: 0 628;
    }

    #token-sale-circle {
      stroke: $token-sale-color;
      // stroke-dasharray: 125.6 502.4;  // 20%
    }
    #token-sale-circle.is-in-view {
      stroke-dasharray: 125.6 502.4 !important;  // 20%
    }

    #community-develop-circle {
      stroke: $community-develop-color;
      // stroke-dasharray: 251.2 376.8;  // 40%
      stroke-dashoffset: -125.6;
    }
    #community-develop-circle.is-in-view {
      stroke-dasharray: 251.2 376.8 !important;  // 40%
    }

    #marketing-circle {
      stroke: $marketing-color;
      // stroke-dasharray: 62.8 565.2;  // 10%
      stroke-dashoffset: -376.8;
    }
    #marketing-circle.is-in-view {
      stroke-dasharray: 62.8 565.2 !important;  // 10%
    }

    #team-circle {
      stroke: $team-color;
      // stroke-dasharray: 62.8 565.2;  // 10%
      stroke-dashoffset: -439.6;
    }
    #team-circle.is-in-view {
      stroke-dasharray: 62.8 565.2 !important;  // 10%
    }

    #future-preserve-circle {
      stroke: $future-preserve-color;
      // stroke-dasharray: 125.6 502.4;  // 20%
      stroke-dashoffset: -502.1;
    }
    #future-preserve-circle.is-in-view {
      stroke-dasharray: 125.6 502.4 !important;  // 20%  
    }
  }

  &__list {
    color: #002846;

    li {
      margin: 0 auto 16px auto;
      max-width: 300px;
    }

    div {
      position: relative;
      padding: 7px 16px 7px 54px;
      background-color: #002846;
      overflow: hidden;
      color: $background-white;
      cursor: pointer;

      border-radius: 20px;

      display: flex;
      flex-direction: row;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    div:before {
      content: '';
      position: absolute;

      left: 12px;
      top: 50%;
      margin-top: -9px;
      // transform: traslateY(-50%);

      width: 18px;
      height: 18px;
      border-radius: 50%;
    }

    #token-sale-list:before {
      border: 4px solid $token-sale-color;
    }

    #community-develop-list:before {
      border: 4px solid $community-develop-color;
    }

    #marketing-list:before {
      border: 4px solid $marketing-color;
    }

    #team-list:before {
      border: 4px solid $team-color;
    }

    #future-preserve-list:before {
      border: 4px solid $future-preserve-color;
    }

    div.active {
      // background-color: #aaa;
      opacity: 0.8;
      transition: .4s;
    }
  }
}

</style>