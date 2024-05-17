<template>
  <article class="card-valuation">
    <div class="card-valuation__wrapper">
      <img :src=img alt="image valuation">
      <h2 class="card-valuation__title">{{ title }}</h2>
    </div>
    <p class="card-valuation__description">{{ description }}</p>
  </article>
</template>

<script setup lang="ts">
const props = defineProps(['img', 'title', 'description'])
</script>

<style scoped lang="scss">
@import "assets/scss/variables";
.card-valuation {
  max-width: 51.2rem;
  border-radius: 12px;
  border: 1px solid var(--Grey-15, #262626);
  background: #141414;
  padding: 5rem;
  &__wrapper {
    display: flex;
    align-items: center;
  }

  &__title {
    padding-left: 2rem;
    @include font-W600-24px
  }

  &__description {
    padding-top: 3rem;
    @include font-W500-18px;
    color: $gray;
  }
}
</style>