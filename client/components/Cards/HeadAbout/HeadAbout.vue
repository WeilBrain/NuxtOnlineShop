<script setup lang="ts">
import Star from "~/components/UI/Star/Star.vue";

const props = defineProps(['title', 'description', 'mw65', 'mx50'])

const className = computed(() => ({
  'mw65': props?.mw65,
  'mx50': props?.mx50
}))
</script>

<template>
  <div :class="className">
    <Star/>
    <h2 class="title">{{title}}</h2>
    <p class="description">{{description}}</p>
  </div>
</template>

<style scoped lang="scss">
@import "assets/scss/variables";
.title{
  @include font-w600-48px;
}
.description{
  padding: 1.4rem 0 8rem;
  @include font-W500-18px;
  color: gray;
}

.mw65{
  max-width: 65rem;
}
.mx50{
  max-width: 50rem;
}

@media (max-width: 1024px) {
  .title{
    font-size: 3.4rem;
  }
  .description{
    font-size: 1.4rem;
  }
}
</style>