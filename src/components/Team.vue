<template>
  <div class="team">
    <div class="container">
      <h1 class="team__title">{{ $t("team.title") }}</h1>

      <div class="team__members">
        <div class="member hide-down pop-order-1">
          <div class="member__background">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none">
              <polygon class="poly" points="0,100 100,0 100,100"/>
            </svg>
          </div>
          <img class="member__avatar" src="../assets/avatar-1.png" />
          <h1 class="member__name">
            {{ $t("team.member-1-name") }}
            <a href="https://www.linkedin.com/in/peter-pan-85081292/">
              <img class="member__linkedin" src="../assets/linkedin.svg" alt="">
            </a>
          </h1>
          <h1 class="member__job">{{ $t("team.member-1-job") }}</h1>
          <p class="member__describe">{{ $t("team.member-1-introduce-1") }}</p>
          <p class="member__describe">{{ $t("team.member-1-introduce-2") }}</p>
        </div>


        <div class="member hide-down pop-order-2">
          <div class="member__background">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none">
              <polygon class="poly" points="0,100 100,0 100,100"/>
            </svg>
          </div>
          <img class="member__avatar" src="../assets/avatar-2.png" />
          <h1 class="member__name">
            {{ $t("team.member-2-name") }}
            <a href="https://www.linkedin.com/in/%E5%86%A0%E5%AE%87-%E5%90%B3-09296ba3/">
              <img class="member__linkedin" src="../assets/linkedin.svg" alt="">
            </a>
          </h1>
          <h1 class="member__job">{{ $t("team.member-2-job") }}</h1>
          <p class="member__describe">{{ $t("team.member-2-introduce-1") }}</p>
          <p class="member__describe">{{ $t("team.member-2-introduce-2") }}</p>
        </div>


        <div class="member hide-down pop-order-3">
          <div class="member__background">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none">
              <polygon class="poly" points="0,100 100,0 100,100"/>
            </svg>
          </div>
          <img class="member__avatar" src="../assets/avatar-3.png" />
          <h1 class="member__name">
            {{ $t("team.member-3-name") }}
            </a href="https://www.linkedin.com/in/seven-lu-b9bb37177/">
              <img class="member__linkedin" src="../assets/linkedin.svg" alt="">
            </a>
          </h1>
          <h1 class="member__job">{{ $t("team.member-3-job") }}</h1>
          <p class="member__describe">{{ $t("team.member-3-introduce-1") }}</p>
          <p class="member__describe">{{ $t("team.member-3-introduce-2") }}</p>
        </div>


        <div class="member hide-down pop-order-4">
          <div class="member__background">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none">
              <polygon class="poly" points="0,100 100,0 100,100"/>
            </svg>
          </div>
          <img class="member__avatar" src="../assets/avatar-4.png" />
          <h1 class="member__name">
            {{ $t("team.member-4-name") }}
            <a href="https://www.linkedin.com/in/%E6%98%B1%E5%98%89-%E6%BD%98-5a7927ab/">
              <img class="member__linkedin" src="../assets/linkedin.svg" alt="">
            </a>
          </h1>
          <h1 class="member__job">{{ $t("team.member-4-job") }}</h1>
          <p class="member__describe">{{ $t("team.member-4-introduce-1") }}</p>
          <p class="member__describe">{{ $t("team.member-4-introduce-2") }}</p>
        </div>
      </div>


      <h1 class="advisor__title">{{ $t("team.advisor") }}</h1>

      <div class="team__advisor">
        <div class="advisor hide-down">
          <div class="advisor__background"></div>
          <div class="advisor__background">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none">
              <polygon class="poly" points="0,100 100,0 100,100"/>
            </svg>
          </div>
          <img class="advisor__avatar" src="../assets/app_girl.png" />
          <h1 class="advisor__name">
            {{ $t("team.advisor-name") }}
            <a href="https://www.facebook.com/groups/1260405513988915/">
              <img class="advisor__facebook" src="../assets/facebook.svg" alt="">
            </a>
          </h1>
          <p class="advisor__describe">{{ $t("team.advisor-describe-1") }}</p>
          <p class="advisor__describe">{{ $t("team.advisor-describe-2") }}</p>
          <p class="advisor__describe">{{ $t("team.advisor-describe-3") }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'Team',
  mounted() {
    // TODO
  },
}

</script>

<style lang="scss">

.team {
  background-color: $background-grey;
  
  padding-top: 100px;
  padding-bottom: 100px;

  &__title {
    text-align: center;
    color: $black-title-color;
  }
}

.team__members {
  display: flex;
  flex-direction: row;
  align-items: baseline;
  justify-content: space-between;
  flex-wrap: wrap;

  margin-top: 20px;

  @media (max-width: $break-big) {
    flex-direction: column;
    align-items: center;
  }
}

.member {
  width: 350px;
  border-radius: 30px;
  box-shadow: 2px 2px 20px #ccc;

  position: relative;  // for absolute background
  padding: 50px 30px 20px 30px;

  overflow: hidden;

  margin-top: 30px;
  min-height: 583px;

  // @media (max-width: $break-big) {
  //   &:not(:first-child) {
  //     margin-top: 30px;
  //   }
  // }
}

.member__background {
  position: absolute;
  top: 0;
  left: 0;

  height: 175px;
  width: 100%;
  
  background-image: url("../assets/member-background-3.jpg");
  background-size: cover;

  svg {
    position: absolute;
    bottom: 0;
    width: 100%;
    height: 50px;
  }

  .poly {
    fill: $background-grey;
  }
}

.member__avatar {
  position: relative;  // for z-index
  z-index: 1;

  display: block;
  margin: 0 auto;

  height: 175px;
  width: 175px;

  border-radius: 50%;
}

.member__name {
  margin-top: 10px;

  font-size: $button-text-size;
  font-weight: bold;
  color: $black-title-color;
}

.member__linkedin {
  height: 25px;
  margin-left: 5px;
  border-radius: 20%;

  vertical-align: baseline;
  cursor: pointer;

  &:hover {
    // color: red;
    transition: opacity .2s;
    opacity: .7;
  }
}

.member__job {
  font-weight: 300;
  font-size: $menu-text-size;
  text-align: left;
}

.member__describe {
  margin-top: 20px;
  text-align: left;
  font-size: $small-content-size;
}

.member__social-area {
  margin-top: 30px;

  display: flex;
  flex-direction: row;
  justify-content: space-between;
}

.advisor__title {
  margin-top: 50px;
  text-align: center;
}

.team__advisor {
  @extend %content-in-center;

  margin-top: 50px;

  @media (max-width: $break-big) {
    flex-direction: column;
    align-items: center;
  }
}

.advisor {
  max-width: 550px; 
  border-radius: 30px;
  box-shadow: 2px 2px 20px #ccc;

  position: relative;  // for absolute background
  padding: 50px 30px 20px 30px;

  overflow: hidden;

  @media (max-width: $break-big) {
    &:not(:first-child) {
      margin-top: 30px;
    }
  }
}

.advisor__background {
  position: absolute;
  top: 0;
  left: 0;

  height: 175px;
  width: 100%;

  background-image: url("../assets/member-background-3.jpg");
  background-size: cover;

  svg {
    position: absolute;
    bottom: 0;
    width: 100%;
    height: 50px;
  }

  .poly {
    fill: $background-grey;
  }
}

.advisor__avatar {
  position: relative;  // for z-index
  z-index: 1;

  display: block;
  margin: 0 auto;

  height: 175px;
  width: 175px;

  border-radius: 50%;
}

.advisor__name {
  margin-top: 10px;

  font-size: $button-text-size;
  font-weight: bold;
  color: $black-title-color;
  text-align: center;
}

.advisor__describe {
  margin-top: 20px;
  text-align: left;
  font-size: $small-content-size;
}

.advisor__facebook
{
  height: 25px;
  margin-left: 5px;
  border-radius: 20%;

  vertical-align: baseline;
  cursor: pointer;

  &:hover {
    // color: red;
    transition: opacity .2s;
    opacity: .7;
  }
}

.member.hide-down {
  transform: translateY(50px);
  opacity: 0;
}

.advisor.hide-down {
  transform: translateY(50px);
  opacity: 0;
}

.member.is-in-view {
  transition: opacity .5s, transform .5s;
  transform: none;
  opacity: 1;
}

.advisor.is-in-view {
  transition: opacity .5s .1s, transform .5s .1s;
  transform: none;
  opacity: 1;
}

.member.pop-order-1 {
  transition-delay: .3s;
}

.member.pop-order-2 {
  transition-delay: .4s;
}

.member.pop-order-3 {
  transition-delay: .5s;
}

.member.pop-order-4 {
  transition-delay: .3s;
}

@media (max-width: $break-middle) {
  .member.pop-order-1 {
    transition-delay: .1s;
  }

  .member.pop-order-2 {
    transition-delay: .1s;
  }

  .member.pop-order-3 {
    transition-delay: .1s;
  }

  .member.pop-order-4 {
    transition-delay: .1s;
  }
}

</style>
