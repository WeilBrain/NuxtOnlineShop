<template>
  <article class="card-trust">
    <div class="card-trust__wrapper">
      <div class="card-trust__star" :class="{classBorderNone : borderNone}">
        <img class="card-trust__image" :src=img alt="trust image rectangle">
      </div>
      <h2 class="card-trust__title">{{title}}</h2>
    </div>
    <p class="card-trust__description">{{description}}</p>
  </article>
</template>

<script setup lang="ts">
const props = defineProps(['img', 'title', 'description', 'borderNone'])
</script>

<style scoped lang="scss">
@import "assets/scss/variables";
.card-trust {
  padding: 5rem;
  border: 1px solid $gray-2626;
  border-radius: 1.2rem;
  background: $gray-1414;
  max-width: 49rem;
  max-height: 30rem;
  &__wrapper {
    display: flex;
    align-items: center;
  }

  &__star {
    padding: 2rem;
    border-radius: 52px;
    border: 1px solid var(--Purple-60, #703BF7);
    background: var(--Grey-08, #141414);
  }

  &__title {
    padding-left: 1.4rem;
    @include font-W600-24px
  }

  &__description {
    padding-top: 2rem;
    @include font-W500-18px;
    color: $gray;
  }
}
.classBorderNone{
  padding: 0;
  border: 0 !important;
}


@media (max-width: 1024px){
  .card-trust {
    padding: 3rem;
    max-width: 40rem;
    max-height: 25rem;
    &__wrapper {

    }

    &__star {
    }

    &__image {
      max-width: 6rem;
      max-height: 6rem;
    }

    &__title {
      font-size: 1.8rem;
    }

    &__description {
      font-size: 1.6rem;
    }
  }
}

@media (max-width: 768px){
  .card-trust {
    padding: 3rem !important;
    max-width: 100%;
    max-height: 25rem;
    &__wrapper {

    }

    &__star {
    }

    &__image {
      max-width: 6rem;
      max-height: 6rem;
    }

    &__title {
      font-size: 1.8rem;
    }

    &__description {
      font-size: 1.6rem;
    }
  }
}
</style>