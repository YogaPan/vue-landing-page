<template>
  <div class="team">
    <div class="container">
      <h1>Meet Our Team</h1>
      <!-- <hr> -->
      <div class="team__members">
        <div class="member">
          <img class="member__avatar" src="../assets/69.jpg" alt="">
          <div class="member__bio">
            <h1>69 Boss</h1>
            <p>CEO & Founder</p>
          </div>
          <div class="member__hover-content">
            <a href="https://www.linkedin.com/yogapan">
              <h1>Read Bio</h1>
              <img src="../assets/linkedin.png" alt="">  <!-- Linkedin icon here.... -->
            </a>
          </div>
        </div>

        <div class="member">
          <img class="member__avatar" src="../assets/69.jpg" alt="">
          <div class="member__bio">
            <h1>69 Boss</h1>
            <p>CEO & Founder</p>
          </div>
          <div class="member__hover-content">
            <a href="https://www.linkedin.com/yogapan">
              <h1>Read Bio</h1>
              <img src="../assets/linkedin.png" alt="">  <!-- Linkedin icon here.... -->
            </a>
          </div>
        </div>

        <div class="member">
          <img class="member__avatar" src="../assets/69.jpg" alt="">
          <div class="member__bio">
            <h1>69 Boss</h1>
            <p>CEO & Founder</p>
          </div>
          <div class="member__hover-content">
            <a href="https://www.linkedin.com/yogapan">
              <h1>Read Bio</h1>
              <img src="../assets/linkedin.png" alt="">  <!-- Linkedin icon here.... -->
            </a>
          </div>
        </div>
      </div>

      <!-- <h1>Advisors</h1>
      <div class="team__advisors">
        <div class="team__advisor"></div>
      </div> -->

    </div>  
  </div>
</template>

<script>

export default {
  name: 'Team',
}

</script>

<style lang="scss">

.team {
  padding: 100px 0;
  background-color: #000;
  color: -background-color;
  text-align: center;

  &__members {
    padding: 50px 0;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-around;

    @media (max-width: $break-middle) {
      display: flex;
      flex-direction: column;
      align-items: center;
    }
  }

  &__advisors {
    padding: 50px 0;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-around;
  }
}

.member {
  position: relative;

  border-radius: 50%;
  width: 250px;
  height: 250px;
  background-color: #888;

  overflow: hidden;  // Hide image overflow.

  @media (max-width: $break-middle) {
    // width: 100%;
    // height: 100%;
  }

  // 圖片漸層遮罩
  &::before {
    position: absolute;
    content: "";
    top: 0;
    left: 0;
    
    width: 100%;
    height: 100%;
    opacity: .75;

    background: linear-gradient(0deg, black 0%, rgba(37, 42, 55, 0) 100%);
    transition: opacity .3s ease; 
  }

  &__avatar {
    width: 100%;
  }

  &__bio {
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);

    width: 100%;
    padding: 25px 25px;

    text-align: center;

    opacity: 1;
    visibility: visible;
    transition: all .3s ease;

    z-index: 1;

    h1 {
      font-size: 25px;
      font-weight: 100;
    }

    p {
      font-size: 15px;
    }
  }

  &__hover-content {
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translate(-50%);

    width: 100%;
    padding: 0 25px 15px 25px;
    text-align: center;

    opacity: 0;
    visibility: hidden;
    transition: .5s ease;

    z-index: 2;

    a {
      display: block;
      height: 100%;
    }

    h1 {
      font-size: 25px;
      font-weight: 900;
      color: $white-text-color;
    }

    img {
      margin-top: 5px;
      height: 30px;
      width: 30px;
    }

    &:hover {
      cursor: pointer;
    }
  }

  &:hover {
    &::before {
      opacity: 1;
    }

    .member__bio {  // Hide bottom.
      opacity: 0;
      visibility: hidden;
      bottom: -40px;
    }

    .member__hover-content {
      opacity: 1;
      visibility: visible; 
    }
  }
}

// .member:hover {
//   &__bio {  // Hide bottom.
//     opacity: 0;
//     visibility: hidden;
//     bottom: -40px;
//   }

//   &__hover_content {
//     opacity: 1;
//     visibility: visible;
//   }
// }

.advisor {
  border-radius: 50%;
  width: 200px;
  height: 200px;
  background-color: #fff;
}

</style>
