<template>
  <div class="navbar">
    <div class="container l-row">

      <div class="navbar__logo l-row">
        <img src="../assets/spirit-logo.png" alt="Spirit">
        <h1>SPIRIT</h1>
      </div>

      <input type="checkbox" id="menu-toggle">
      <label for="menu-toggle" class="label-toggle">
        <div class="navbar__hamburger">
          <div class="bar-1"></div>
          <div class="bar-2"></div>
          <div class="bar-3"></div>
        </div>
      </label>

      <ul>
        <li><a @click="scroll('describe')">About Spirit</a></li>
        <li><a @click="scroll('token')">ICO</a></li>
        <li><a @click="scroll('roadmap')">Roadmap</a></li>
        <li><a href="#">White Paper</a></li>
        <li><a class="language">Language</a></li>
      </ul>

    </div>
  </div>
</template>

<script>

export default {
  name: 'Navbar',
  mounted() {
    // TODO
  },
  methods: {
    scroll(section) {
      window.scrollTo({
        top: document.getElementsByClassName(section)[0].offsetTop,
        behavior: "smooth"
      })
    },
  },
}

</script>

<style lang="scss" scoped>

.navbar {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 98;  // always above relative elements but under loading scene.

  // padding: 20px 0;
  // padding: 10px 0;
  background-color: $dark;

  ul {
    display: flex;
    justify-content: space-between;
  }

  li {
    padding: 20px;
  }

  a {
    position: relative;
    display: block;  // 填滿母元素

    font-size: 20px;
    font-weight: 100;
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
      height: 50px;
      width: 50px;
    }

    h1 {
      color: $white;
      margin-left: 20px;
    }
  }
}

#menu-toggle {
  display: none;
}

.label-toggle {
  display: none;
}

/* 下拉式選單 */
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

      background-color: $dark;
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

    a {
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
    transition: 0.5s;
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
