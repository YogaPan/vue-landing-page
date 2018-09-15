<template>
  <div class="footer">

    <div class="container l-row">
      <div class="footer__coporation">
        <h1>© 2018 Spirit Team | All rights reserved</h1>
      </div>

      <div class="footer__address">
        <p>Ubex AI AG, Gotthardstrasse 26 6300 Zug
  Head Office: Crypto Valley Labs "The Block",
  Dammstrasse 16 6300 Zug, Switzerland</p>
    </div>

      <div class="footer__contact">
        <p>Contact us: galtz0321@gmail.com
  Partner: yogapan85321@gmail.com
  Press: dancemonkey2007@hotmail.com</p>
      </div>

      <div class="footer__socical l-row l-row--from-start">

        <div class="social-icon">
          <img src="../assets/discord.svg" alt="">
        </div>

        <div class="social-icon">
          <img src="../assets/telegram.svg" alt="">
        </div>

      </div>
    </div>

  </div>
</template>

<script>

export default {
  name: 'Footer',
}

</script>

<style lang="scss" scoped>

%footer-column {
  flex-basis: 25%;
  padding: 50px 30px 0px;

  @media (max-width: $break-big) {
    flex-basis: 50%;
  }

  @media (max-width: $break-small) {
    flex-basis: 100%;
  }  
}

.footer {
  padding-bottom: 50px;
  background-color: $dark;

  &__coporation {
    @extend %content-in-center;
    @extend %footer-column;

    h1 {
      font-size: 25px;
      font-weight: 100;
      text-align: left;
      color: $blue;
    }
  }

  &__address {
    @extend %content-in-center;
    @extend %footer-column;

    p {
      font-size: 15px;
      // font-weight: 100;
      text-align: left;
      color: #ddd;
    }
  }

  &__contact {
    @extend %content-in-center;
    @extend %footer-column;

    p {
      font-size: 15px;
      // font-weight: 400;
      text-align: left;
      color: #ddd;
    }
  }

  &__social {
    @extend %content-in-center;
    @extend %footer-column;
  }
}

// 手機螢幕大小時，把社群按鈕放在最上面
@media (max-width: $break-big) {
  .footer__socical {
    order: 1;
  }

  .footer__contact {
    order: 2;
  }

  .footer__address {
    order: 3;
  }

  .footer__coporation {
    order: 4;
  }
}

</style>