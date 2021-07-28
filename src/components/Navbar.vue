<template>
  <div
    class="navbar"
    :class="{
      'navbar--add-background': !isOnTop || isMenuToggle,
      'navbar--menu-toggle': isMenuToggle
    }"
  >
    <div class="container l-row">
      <div class="navbar__logo l-row">
        <img src="../assets/spirit-logo.png" alt="Spirit" />
        <a href="#">SPIRIT</a>
      </div>
      <div @click="menuToggle()" class="label-toggle" for="menu-toggle">
        <div class="navbar__hamburger">
          <div class="bar-1"></div>
          <div class="bar-2"></div>
          <div class="bar-3"></div>
        </div>
      </div>
      <ul class="navbar__right">
        <li class="navbar__item">
          <a @click="menuToggle(), scroll('describe')">{{
            $t('navigation.aboutSpirit')
          }}</a>
        </li>
        <li class="navbar__item">
          <a @click="menuToggle(), scroll('detail')">{{
            $t('navigation.detail')
          }}</a>
        </li>
        <li class="navbar__item">
          <a @click="menuToggle(), scroll('roadmap')">{{
            $t('navigation.roadmap')
          }}</a>
        </li>
        <li class="navbar__item">
          <a @click="menuToggle(), scroll('team')">{{ $t('navigation.team') }}</a>
        </li>
        <li class="navbar__item">
          <a href="whitepaper_zh-TW.pdf" target="_blank">{{
            $t('navigation.whitePaper')
          }}</a>
        </li>
        <li class="navbar__item language">
          <div class="dropdown-toggle" ref="dropdown-toggle">
            <a>{{ $t('navigation.language') }}</a>
            <div></div>
            <!-- Drop down arrow -->
          </div>
          <div
            class="language__dropdown"
            :class="{ 'language__dropdown--drop': isDropdownToggle }"
          >
            <label class="language__option">
              <span>中文(繁體)</span>
              <input
                type="radio"
                name="language-selector"
                v-model="$i18n.locale"
                value="zhTw"
              />
              <div class="option__checkmark"></div>
            </label>
          </div>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Navbar',
  data() {
    return {
      isOnTop: true,
      isDropdownToggle: false,
      isMenuToggle: false
    }
  },
  mounted() {
    this.$refs['dropdown-toggle'].addEventListener(
      'click',
      e => {
        this.dropdownToggle() // toggle dropdown menu.
        e.stopPropagation() // Stop propagation to child element.
      },
      true
    )

    // Close dropdown menu if scroll.
    window.addEventListener('scroll', () => {
      this.dropdownClose()

      if (window.pageYOffset || document.documentElement.scrollTop != 0)
        this.isOnTop = false
      else this.isOnTop = true
    })

    // Close dropdown menu if click other places.
    window.addEventListener(
      'click',
      e => {
        if (!e.target.classList.contains('dropdown-toggle'))
          this.dropdownClose()
      },
      false
    )
  },
  methods: {
    scroll(section) {
      window.scrollTo({
        top: document.getElementsByClassName(section)[0].offsetTop - 70, // 70 is navbar height.
        behavior: 'smooth'
      })
    },
    dropdownToggle() {
      this.isDropdownToggle = !this.isDropdownToggle
    },
    dropdownClose() {
      this.isDropdownToggle = false
    },
    menuToggle() {
      this.isMenuToggle = !this.isMenuToggle
    },
    changeLocale(lang) {
      this.$i18n.locale = lang
    }
  }
}
</script>

<style lang="scss">
.navbar {
  @extend %content-in-center;

  position: fixed;
  top: 0;
  left: 0;
  z-index: 98; // Always above relative elements but under loading scene.

  width: 100%;
  height: 70px;
  transition: background-color 0.3s;
  background-color: transparent; // Transparent when on top.

  // Fix navbar blinking
  -webkit-transform: translate3d(0, 0, 0);

  &--add-background {
    // Have background color when scroll down.
    background-color: $background-black;
    // opacity: 0.97;
  }

  &__logo {
    img {
      height: 45px;
      width: 45px;
    }

    a {
      margin-left: 20px;
      font-size: 32px;
      color: $white-text-color;
    }
  }

  &__right {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
  }

  &__right > li {
    padding: 20px;
  }

  &__right > li a {
    position: relative;
    // display: block;  // 填滿母元素

    font-size: 20px;
    color: $grey-text-color;
    text-align: center;

    // 下畫線
    &:after {
      position: absolute;
      content: '';

      height: 1px;
      bottom: -4px;

      margin: 0 auto;
      left: 0;
      right: 0;

      width: 0;
      background: $background-grey;
    }

    &:hover {
      color: $white-text-color;
      cursor: pointer;
      transition: color 0.5s;

      // 下滑線
      &:after {
        width: 100%;
        background: $white-text-color;
        transition: width 0.5s;
      }
    }
  }
}

.language {
  position: relative;

  &__dropdown {
    position: absolute;
    top: 90px; // transition: scroll up from below.
    right: 0;

    width: 200px;

    padding: 5px 20px;

    visibility: hidden;
    opacity: 0; // for transition.

    border-radius: 10px;
    background-color: $background-black;

    &.language__dropdown--drop {
      transition: top cubic-bezier(0.25, 0.46, 0.45, 0.94) 0.2s,
        opacity cubic-bezier(0.25, 0.46, 0.45, 0.94) 0.2s;
      visibility: visible;
      top: 70px; // menu's height.
      opacity: 1;
    }
  }
}

// Drop down arrow
.dropdown-toggle {
  // display: flex;

  div {
    // position: relative;
    display: inline-block;

    // left: 3px;
    // bottom: 3px;
    margin: 0 0 3px 10px;

    height: 8px;
    width: 8px;

    transform: rotate(-45deg);

    border-left: 2px solid $grey-text-color;
    border-bottom: 2px solid $grey-text-color;
  }

  &:hover {
    cursor: pointer;

    a {
      color: $white-text-color;

      &:after {
        width: 100%;
        background: $white-text-color;
        transition: width 0.5s;
      }
    }

    div {
      border-color: $white-text-color;
      transition: border-color 0.5s;
    }
  }
}

.language__option {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-between;

  font-size: 20px;
  padding: 5px 0;
  color: $grey-text-color;

  &:hover {
    color: $white-text-color;
    cursor: pointer;
  }

  input {
    visibility: hidden;
  }

  div {
    height: 10px;
    width: 10px;
    border-radius: 50%;
  }

  input:checked ~ div {
    background-color: $green;
  }
}

#menu-toggle {
  display: none;
}

.label-toggle {
  display: none;
}

/* 變成下拉式選單 */
@media (max-width: $break-small) {
  .navbar {
    ul {
      position: fixed;
      top: 70px; // menu's height
      left: 0;

      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: flex-start;

      height: 0; // 先藏起來，高度為 0 才有動畫效果
      width: 100vw;

      padding-top: 0px;
      background-color: $background-black;
      text-align: center;

      opacity: 0; // 先藏起來
      visibility: hidden; // 先藏起來
      transition: all 0.5s ease;
    }

    li {
      display: block;
      flex: 0 0 auto;

      padding: 15px 0;

      color: $white-text-color;
      font-size: 1.5em;
    }

    li a {
      color: $white-text-color;
      font-size: 20px;

      &:after {
        width: 100%;
        background: $white-text-color;
        transition: 0.5s;
      }
    }
  }

  .language__dropdown {
    position: absolute;
    top: 90px; // transition: scroll up from below.
    left: -25px; // align center

    width: 125px;
    padding: 5px 0;

    visibility: hidden; // for transition.
    opacity: 0; // for transition.

    background-color: $background-black;

    &.language__dropdown--drop {
      transition: top cubic-bezier(0.25, 0.46, 0.45, 0.94) 0.2s,
        opacity cubic-bezier(0.25, 0.46, 0.45, 0.94) 0.2s;
      visibility: visible;
      top: 70px; // menu's height.
      opacity: 1;
    }
  }

  .label-toggle {
    display: block;
    cursor: pointer;
  }

  .navbar--menu-toggle ul {
    opacity: 1;
    height: 100vh;
    width: 100vw;
    // padding-top: 50px;
    visibility: visible;
  }
}

// 動畫漢堡選單
.navbar__hamburger {
  cursor: pointer;
  display: inline-block;

  .bar-1,
  .bar-2,
  .bar-3 {
    width: 30px;
    height: 3px;
    background-color: $background-white;
    margin: 6px 0;
    transition: transform 0.5s, opacity 0.5s;
  }
}

/* Rotate first bar */
.navbar--menu-toggle .label-toggle .bar-1 {
  transform: rotate(-45deg) translate(-6px, 3px);
}
/* Fade out the second bar */
.navbar--menu-toggle .label-toggle .bar-2 {
  opacity: 0;
}
/* Rotate last bar */
.navbar--menu-toggle .label-toggle .bar-3 {
  transform: rotate(45deg) translate(-9px, -7px);
}
</style>
