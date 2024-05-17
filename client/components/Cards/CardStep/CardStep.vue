<template>
  <article class="card-step">
    <div class="card-step__header">
      <span class="card-step__count">{{stepCount}}</span>
    </div>
    <div class="card-step__wrapper">
      <h2 class="card-step__title">{{title}}</h2>
      <p class="card-step__description">{{description}}</p>
    </div>
  </article>
</template>

<script setup lang="ts">
import { ref, onMounted  } from 'vue';
const props = defineProps(['stepCount', 'title', 'description'])
</script>


<style scoped lang="scss">
@import "/assets/scss/variables";
.card-step {

  &__header {
    border-left: 1.5px solid #513b8a;
    @include font-W500-20px;
    padding: 1.6rem 2rem;
  }

  &__count {
    @include font-W500-20px;
  }

  &__wrapper {
    position: relative;
    max-width: 51.2rem;
    height: 30rem;
    padding: 5rem;
    border-radius: 0px 12px 12px 12px;
    border: 1px solid #262626;
    background: linear-gradient(121deg, #703BF7 -49.01%, rgba(112, 59, 247, 0.00) 13.65%);
    overflow: hidden;
  }

  &__title {
    @include font-W600-26px;
  }

  &__description {
    @include font-W500-18px;
    color: $gray;
  }

  @keyframes rotate {
    to {
      transform: rotate(360deg);
    }
  }
  &__header {
    border-left: 1.5px solid #513b8a;
    @include font-W500-20px;
    padding: 1.6rem 2rem;
  }

  &__count {
    @include font-W500-20px
  }

  &__wrapper {
    max-width: 51.2rem;
    padding: 5rem;
    border-radius: 0px 12px 12px 12px;
    border: 1px solid #262626;
    background: linear-gradient(121deg, #703BF7 -49.01%, rgba(112, 59, 247, 0.00) 13.65%);
  }

  &__title {
    @include font-W600-26px;
    padding-bottom: 2rem;
  }

  &__description {
    @include font-W500-18px;
    color: $gray;
  }
}

@media (max-width: 1024px){
  .card-step__title {
    font-size: 2rem;
  }

  .card-step__description {
    font-size: 1.6rem;
  }
  .card-step__wrapper{
    padding: 3rem;
    max-width: 44rem;
  }
}

@media (max-width: 768px){
  .card-step__title {
    font-size: 1.8rem;
  }

  .card-step__description {
    font-size: 1.4rem;
  }
}
@media (max-width: 715px){
  .card-step, .card-step__wrapper{
    width: 100%;
  }
  .card-step__wrapper{
    max-width: 100%;
    height: 100%;
    max-height: 100%;
    padding: 5rem 5rem 0rem 5rem;
  }
  .card-step__description{
    margin-bottom: 1rem;
  }
}
</style>