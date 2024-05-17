<template>
  <div class="icon">
    <img class="icon__img" :src="getImage.img" alt="icon image">
    <span class="icon__text">{{ text }}</span>
  </div>
</template>

<script setup lang="ts">
import { computed } from "vue";

const props = defineProps({
  text: {
    type: String,
    default: 'Villa',
  },
  img: {
    type: String,
    default: '',
  },
  villa: {
    type: Boolean,
    default: false,
  },
});

const getImage = computed(() => {
  if (props.villa === true) {
    return { img: '/Product/villa.svg', text: 'Villa' };
  } else {
    return { img: props.img, text: props.text };
  }
});
</script>


<style scoped lang="scss">
@import '/assets/scss/variables';
.icon {
  gap: 4px;
  display: flex;
  max-width: 21rem;
  padding: 8px 14px;
  align-items: center;
  border-radius: 28px;
  border: 1px solid #262626;
  background: #1A1A1A;

  transition: all 0.3s ease-out;
  &__img {
  }
  &__text {
    color: #FFF;
    font-size: 18px;
    font-style: normal;
    font-weight: 500;
    line-height: 150%; /* 27px */
  }

  &:hover{
    transform: scale(1.05);
  }
}


@media (max-width: 1024px){
  .icon{
    padding: 5px 9px;
    max-width: 100%;
  }
  .icon__text{
    font-size: 1.2rem;
  }
  .icon__img{
    max-width: 2rem;
    max-height: 2rem;
  }
}
@media (max-width: 768px){
  .icon {
    position: relative;
    .icon__text {
      width: 200%;
      text-align: center;
      display: none;
      position: absolute;
      top: -33px;
      left: 50%;
      padding: 0.5rem;
      border: 1px solid $gray-2626;
      border-radius: 13px;
      transform: translateX(-50%);
    }
    &:hover .icon__text,
    &:focus .icon__text,
    &:active .icon__text{
      display: block;
    }
  }
}
</style>