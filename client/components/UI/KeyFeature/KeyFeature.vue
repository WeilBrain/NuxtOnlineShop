<script setup lang="ts">
const props = defineProps(['text'])
</script>

<template>
  <div class="feature__rectangle">
    <div class="feature__wrapper">
      <img class="feature__image" src="/KeyFeature.svg" alt="feature icon img">
      <span class="feature__text">{{text}}</span>
    </div>
  </div>
</template>

<style scoped lang="scss">
@import 'assets/scss/variables';
.feature {
  &__rectangle {
    max-width: 78rem;
  }

  &__wrapper {
    padding: 2rem 0 2rem 2rem;
    max-width: 68rem;
    display: flex;
    align-items: center;
    border-left: 1px solid #703bf7;
    background: linear-gradient(90deg, #1a1a1a 0%, rgba(26, 26, 26, 0) 100%);
  }

  &__image {
    padding-right: 0.6rem;
    width: 2rem;
    height: 2rem;
  }

  &__text {
    @include font-W500-18px;
    color: $gray;
  }
}

@media (max-width: 1024px){
  .feature__title{
    font-size: 1.6rem;
  }
  .feature__text{
    font-size: 1.3rem;
  }
}
</style>