<template>
  <div class="card" :class="className">
    <h2 class="card__title">{{ title }}</h2>
    <p class="card__description">{{ description }}</p>
  </div>
</template>

<script setup lang="ts">
import {ref, computed } from 'vue';

const props = defineProps({
  title: {
    type: String,
    default: '',
  },
  description: {
    type: String,
    default: ''
  },
  big:{
    type: Boolean,
    default: false,
  }
});

const className = computed(() => ({
  'card__big': props.big,
}));
</script>

<style scoped lang="scss">
.card {
  padding: clamp(2rem, 50%, 1rem);
  max-width: 19rem;
  max-height: 19rem;
  border-radius: 12px;
  border: 1px solid #262626;
  background: #1A1A1A;
  transition: all 0.3s ease-in-out;
  &:hover {
    transform: scale(1.05);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  &__title {
    padding-bottom: 0.5rem;
    color: #FFF;
    font-size: calc(1.8rem + 20 * (100vw / 1200));
    font-style: normal;
    font-weight: 700;
  }

  &__description {
    color: #999;
    font-size: calc(1.2rem + 6 * (100vw / 1920));
    font-style: normal;
    font-weight: 500;
  }

  &__big{
    max-width: 24rem;
    padding-bottom: 2rem;
  }
}


@media(max-width: 480px){
  .card{
    width: 100%;
  }
}
</style>