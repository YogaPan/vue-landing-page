<template>
  <div class="navbar" :class="{ 'navbar--add-background': !isOnTop }">
    <div class="container l-row">

      <div class="navbar__logo l-row">
        <img src="../assets/spirit-logo.png" alt="Spirit">
        <a href="#">SPIRIT</a>
      </div>

      <input id="menu-toggle" type="checkbox">
      <label class="label-toggle" for="menu-toggle">
        <div class="navbar__hamburger">
          <div class="bar-1"></div>
          <div class="bar-2"></div>
          <div class="bar-3"></div>
        </div>
      </label>

      <ul>
        <li><a @click="scroll('describe')">{{ $t("navbar.about-spirit") }}</a></li>
        <li><a @click="scroll('token')">{{ $t("navbar.ico") }}</a></li>
        <li><a @click="scroll('roadmap')">{{ $t("navbar.roadmap") }}</a></li>
        <li><a href="#">White Paper</a></li>
        <li><a class="language">{{ $t("navbar.language") }}</a></li>
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
    }
  },
  mounted() {
    window.addEventListener('scroll', () => {
      if (window.pageYOffset || document.documentElement.scrollTop != 0)
        this.isOnTop = false
      else
        this.isOnTop = true
    })
  },
  methods: {
    scroll(section) {
      window.scrollTo({
        top: document.getElementsByClassName(section)[0].offsetTop - 70,  // 70 is navbar height.
        behavior: "smooth"
      })
    },
  },
}

</script>

<style lang="scss">

.navbar {
  @extend %content-in-center;

  position: fixed;
  top: 0;
  left: 0;
  z-index: 98;  // Always above relative elements but under loading scene.

  width: 100%;
  height: 70px;
  transition: background-color .3s;
  background-color: transparent;  // Transparent when on top.

  &--add-background {  // Have background color when scroll down.
    background-color: #111;
    opacity: 0.97;
  }

  ul {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
  }

  li {
    padding: 20px;
  }

  li a {
    position: relative;
    display: block;  // 填滿母元素

    font-size: 20px;
    color: #aaa;
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
      background: #aaa;
    }

    &:hover {
      color: $white;
      cursor: pointer;
      transition: .5s;

      // 下滑線
      &:after {
        width: 100%;
        background: $white;
        transition: .5s;
      }
    }
  }

  &__logo {
    img {
      height: 45px;
      width: 45px;
    }

    a {
      margin-left: 20px;
      font-size: 25px;
      color: $white;
    }
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
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: flex-start;

      flex-basis: 100%;
      height: 0;  // 先藏起來，高度為 0 才有動畫效果
      padding-top: 0px;

      background-color: #111;
      text-align: center;
      
      opacity: 0;  // 先藏起來
      visibility: hidden;  // 先藏起來
      transition: all .5s ease;
    }

    li {
      display: block;
      flex: 0 0 auto;

      padding: 25px 0;

      color: $white;
      font-size: 1.5em;
    }

    li a {
      color: $white;
      font-size: 30px;

      &:after {
        width: 100%;
        background: $white;
        transition: .5s;
      }
    }
  }

  .language {
    position: relative;

    // &::after {
    //   position: absolute;
    //   content: "";

    //   left: 1000000px;
    //   top: 50%;
    //   transform: trasnlateY(-50%);

    //   height: 5px;
    //   width: 5px;
      
    //   border-top: 5px solid red;
    //   border-left: 5px solid red;
    //   border-right: 5px solid red;

    //   background-color: $white;
    // }
  }

  .label-toggle {
    display: block;
    cursor: pointer;
  }

  #menu-toggle:checked ~ ul {
    opacity: 1;
    height: 100vh;
    padding-top: 50px;
    visibility: visible;
  }
}

// 動畫漢堡選單
.navbar__hamburger {
  cursor: pointer;
  display: inline-block;

  .bar-1, .bar-2, .bar-3 {
    width: 30px;
    height: 3px;
    background-color: #ddd;
    margin: 6px 0;
    transition: transform .5s, opacity .5s;
  }
}

/* Rotate first bar */
#menu-toggle:checked ~ label .bar-1 {
  transform: rotate(-45deg) translate(-7px, 3px) ;
}

/* Fade out the second bar */
#menu-toggle:checked ~ label .bar-2 {
  opacity: 0;
}

/* Rotate last bar */
#menu-toggle:checked ~ label .bar-3 {
  transform: rotate(45deg) translate(-9px, -7px) ;
}

</style>
