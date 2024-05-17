<script setup lang="ts">

</script>

<template>
  <section class="start">
    <div class="container">
      <div class="start__wrapper">
        <div class="start__info">
          <h2 class="start__title">Start Your Real Estate Journey Today</h2>
          <p class="start__description">Your dream property is just a click away. Whether you're looking for a new home, a strategic investment, or expert real estate advice, Estatein is here to assist you every step of the way. Take the first step towards your real estate goals and explore our available properties or get in touch with our team for personalized assistance.</p>
        </div>
        <div class="start__btn">
          <UIBtnLink class="btn" title="Explore Properties" :purple="true" link="/" />
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped lang="scss">
@import "assets/scss/variables";
.start {
  margin-top: 10rem;
  background: no-repeat center url("/StartRealAbstract.svg");
  background-size: cover;
  border-top: 1px solid $gray-2626;
  border-bottom: 1px solid $gray-2626;
  &__wrapper {
    padding: 10rem 0 10rem;
    display: flex;
    align-items: flex-end;
    justify-content: space-between;
  }

  &__info {
  }

  &__title {
    @include font-w600-48px;
  }

  &__description {
    @include font-W500-18px;
    color: $gray;
    max-width: 115rem;
  }
}

@media (max-width: 1024px) {
  .start{
    background-size: 1024px 1000%;
    &__title{
      font-size: 3.8rem;
    }

    &__description{
      font-size: 1.6rem;
      max-width: 80%;
    }
  }
  .btn{
    width: 15.2rem;
    padding: 2rem;
  }
}

@media(max-width: 480px){
  .start__wrapper{
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }

  .start__title{
    max-width: 100%;
    font-size: 3.4rem;
  }
  .start__description{
    max-width: 100%;
    font-size: 1.4rem;
    margin-top: 2rem;
    margin-bottom: 2rem;
  }

  .start{
    background-image: url("/abstract_start_mobile.svg");
    background-size: cover;
  }
}
</style>