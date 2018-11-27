<template>
  <div class="footer">
    <div class="container">
      <h1>Join Our Community</h1>

      <div class="footer__social">
        <div class="social-icon">
          <img src="../assets/discord.svg" alt="">
          <svg height="100" width="100">
            <circle cx="50" cy="50" r="40" ></circle>
          </svg>
        </div>

        <div class="social-icon">
          <img src="../assets/telegram.svg" alt="">
        </div>
      </div>

      <p class="footer__copyright">© 2018 Spirit. All Rights Reserved.</p>

    </div>
  </div>
</template>

<script>
export default {
  name: 'Footer',
}
</script>

<style lang="scss">

.footer {
  background-color: #202328;
  padding: 50px 0 20px 0;
  text-align: center;

  h1 {
    color: $white;
    font-weight: 300;
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
    // font-size: 13px;
    color: #666;
  }
}

</style>
