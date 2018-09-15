<template>
  <div class="footer">
    <div class="container">
      <h1>Join Our Community</h1>

      <div class="footer__social">
        <div class="social-icon">
          <img src="../assets/discord.svg" alt="">
        </div>

        <div class="social-icon">
          <img src="../assets/telegram.svg" alt="">
        </div>
      </div>

      <p class="copyright">© 2018 Spirit. All Rights Reserved.</p>

    </div>
  </div>
</template>

<script>
export default {
  name: 'Footer',
}
</script>

<style lang="scss" scoped>

.footer {
  background-color: $dark;
  padding: 50px 0 20px 0;
  text-align: center;

  h1 {
    color: $white;
  }

  &__social {
    // margin-top: 50px;
    padding: 20px 0;

    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
  }

  &__email {
    color: $blue;
  }

  &__copyright {
    // margin-top: 50px;
    font-size: 13px;
  }
}

</style>
