<template>
  <div class="team">
    <div class="container">
      <h1 class="team__title">Meet Our Team</h1>

      <div class="team__members">
        <div class="member">
          <div class="member__background"></div>

          <img class="member__avatar" src="../assets/avatar-1.png" />

          <h1 class="member__name">Monica</h1>
          <h1 class="member__job">CEO</h1>
          <p class="member__describe">Eum itaque deleniti voluptatem ut quibusdam voluptatem repudiandae et. Quo fugiat labore odio esse qui sequi sit. Esse ipsa dicta autem reiciendis.</p>
          <p class="member__describe">Possimus alias et animi autem minima temporibus laudantium.</p>

          <div class="member__social-area">
            <button class="member__linkedin">Linkedin</button>
            <button class="member__bio">Twitter</button>
          </div>
        </div>

        <div class="member">
          <div class="member__background"></div>

          <img class="member__avatar" src="../assets/avatar-2.png" />

          <h1 class="member__name">Asian</h1>
          <h1 class="member__job">Frontend Engineer</h1>
          <p class="member__describe">Eum itaque deleniti voluptatem ut quibusdam voluptatem repudiandae et. Quo fugiat labore odio esse qui sequi sit. Esse ipsa dicta autem reiciendis.</p>
          <p class="member__describe">Possimus alias et animi autem minima temporibus laudantium.</p>

          <div class="member__social-area">
            <button class="member__linkedin">Linkedin</button>
            <button class="member__bio">Twitter</button>
          </div>
        </div>

        <div class="member">
          <div class="member__background"></div>

          <img class="member__avatar" src="../assets/avatar-3.png" />

          <h1 class="member__name">Bill</h1>
          <h1 class="member__job">Dick Sucker</h1>
          <p class="member__describe">Eum itaque deleniti voluptatem ut quibusdam voluptatem repudiandae et. Quo fugiat labore odio esse qui sequi sit. Esse ipsa dicta autem reiciendis.</p>
          <p class="member__describe">Possimus alias et animi autem minima temporibus laudantium.</p>

          <div class="member__social-area">
            <button class="member__linkedin">Linkedin</button>
            <button class="member__bio">Twitter</button>
          </div>
        </div>
      </div>

      <h1 class="advisor__title">Advisor</h1>

      <div class="team__advisor">
        <div class="advisor">
          <div class="advisor__background"></div>

          <img class="advisor__avatar" src="../assets/app_girl.png" />

          <h1 class="advisor__name">Swift Girls</h1>
          <p class="advisor__describe">Possimus alias et animi autem minima temporibus laudantium.</p>
          <p class="advisor__describe">Eum itaque deleniti voluptatem ut quibusdam voluptatem repudiandae et. Quo fugiat labore odio esse qui sequi sit. Esse ipsa dicta autem reiciendis.</p>
          <p class="advisor__describe">Eum itaque deleniti voluptatem ut quibusdam voluptatem repudiandae et. Quo fugiat labore odio esse qui sequi sit. Esse ipsa dicta autem reiciendis.</p>

          <!-- <div class="advisor__social-area">
            <button class="advisor__linkedin">Linkedin</button>
            <button class="advisor__bio">Twitter</button>
          </div> -->
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'Team'
}

</script>

<style lang="scss">

.team {
  background-color: #e8e8e8;
  
  padding-top: 100px;
  padding-bottom: 100px;

  &__title {
    text-align: center;
    color: black;
  }
}

.team__members {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-between;

  margin-top: 50px;

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

  // &:hover {
  //   transform: scale(1.01);
  //   transition: transform .1s;
  // }

  @media (max-width: $break-big) {
    &:not(:first-child) {
      margin-top: 30px;
    }
  }
}

.member__background {
  position: absolute;
  top: 0;
  left: 0;

  // z-index: -1;

  height: 250px;
  width: 100%;
  
  background-color: $dark;

  // skew effect
  transform: translateY(-100px) skewY(-10deg);
}

.member__avatar {
  position: relative;  // for z-index
  z-index: 1;

  display: block;
  margin: 0 auto;

  height: 175px;
  width: 175px;
  // background-color: grey;

  border-radius: 50%;
}

.member__name {
  margin-top: 10px;

  font-size: 30px;
  font-weight: 900;
  color: $dark;
}

.member__job {
  font-size: 25px;
  text-align: left;
}

.member__describe {
  margin-top: 20px;
  text-align: left;
  font-size: 15px;
}

// .member__list {
//   li {
//     list-style-type: disc;
//     font-size: 16px;
//     line-height: 1.5;
//   }
// }

.member__social-area {
  margin-top: 30px;

  display: flex;
  flex-direction: row;
  justify-content: space-between;
}

%member__button {
  @extend %content-in-center;

  height: 50px;
  width: 140px;

  border-radius: 15px;

  font-size: 20px;
  // font-weight: bold;

  // transition: border-width .5s;

  &:hover {
    // border-width: 3px;
    // box-shadow: #4875B4 0 0 1px 1px;
    // transition: border-width .5s;
  }
}

.member__linkedin {
  @extend %member__button;
  // border: 2px solid $blue;
  // color: $blue;

  border: 2px solid #4875B4;
  color: #4875B4;
}

.member__bio {
  @extend %member__button;
  // border: 2px solid $green;
  // color: $green;

  // border: 2px solid #33CCFF;
  border: 2px solid $blue;
  color: $blue;
}

.advisor__title {
  margin-top: 50px;
  text-align: center;
}

.team__advisor {
  @extend %content-in-center;
  // display: flex;
  // flex-direction: row;
  // align-items: center;
  // justify-content: space-between;

  margin-top: 50px;

  @media (max-width: $break-big) {
    flex-direction: column;
    align-items: center;
  }
}

.advisor {
  min-width: 350px;
  width: 550px;
  border-radius: 30px;
  box-shadow: 2px 2px 20px #ccc;

  position: relative;  // for absolute background
  padding: 50px 30px 20px 30px;

  overflow: hidden;

  // &:hover {
  //   transform: scale(1.01);
  //   transition: transform .1s;
  // }

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

  // z-index: -1;

  height: 250px;
  width: 100%;
  
  background-color: $dark;

  // skew effect
  transform: translateY(-100px) skewY(-10deg);
}

.advisor__avatar {
  position: relative;  // for z-index
  z-index: 1;

  display: block;
  margin: 0 auto;

  height: 175px;
  width: 175px;
  // background-color: grey;

  border-radius: 50%;
}

.advisor__name {
  margin-top: 10px;

  font-size: 30px;
  font-weight: 900;
  color: $dark;
  text-align: center;
}

.advisor__describe {
  margin-top: 20px;
  text-align: left;
  font-size: 15px;
}

</style>
