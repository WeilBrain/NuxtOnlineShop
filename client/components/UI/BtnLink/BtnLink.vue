<template>
  <NuxtLink :to=link class="v-btn" :class="className" >
    {{ title }}
  </NuxtLink>
</template>

<script setup lang="ts">
import {computed } from 'vue';

const props = defineProps({
  title: {
    type: String,
    default: 'Кнопка',
  },
  link: {
    type: String,
    default: true,
  },
  disabled: {
    type: Boolean,
    default: false,
  },
  purple: {
    type: Boolean,
    default: false,
  },
  light: {
    type: Boolean,
    default: false,
  },
  widePurple:{
    type: Boolean,
    default: false,
  },
  maxWidth: {
    type: Boolean,
    default: false
  }
});

const className = computed(() => ({
  'v-btn__disabled': props.disabled,
  'v-btn__purple': props.purple,
  'v-btn__light': props.light,
  'v-btn__widePurple': props.widePurple,
  'v-btn__maxWidth': props.maxWidth,
}));
</script>


<style lang="scss" scoped>
.v-btn {
  display: flex;
  justify-content: center;
  color: #fff;
  font-size: 18px;
  font-style: normal;
  font-weight: 500;
  border-radius: 10px;
  background: #191919;
  padding: 18px 24px;
  text-decoration: none;
  transition: all 0.2s ease-in-out;

  &__light{
    background-color: #ffffff;
    color: black;
    &:hover {
      transform: scale(1.1);
    }
  }

  &__purple {
    background: #703BF7;

    &:hover {
      background-color: #3c208c;
      transform: scale(1.1);
    }
  }

  &__widePurple{
    display: flex;
    align-items: center;
    background-color: #703BF7;
    max-width: 28rem;
    &:hover {
      background-color: #3c208c;
      transform: scale(1.1);
    }
  }

  &__maxWidth{
    border: 1px solid #262626;
    border-radius: 1rem;
    padding: 1.8rem 2.4rem;
    max-width: 41.9rem;
    max-height: 6.3rem;
    background-color: #181818 !important;
    display: flex;
    margin-top: 3rem;
    transition: 0.2s ease-in-out;
    &:hover{
      background-color: #151515;
    }
  }
}

@media (max-width: 1024px){
 .v-btn{
   font-size: 1.4rem;
 }
}
@media (max-width: 768px){
  .v-btn{
    font-size: 1.2rem;
  }
}

@media(max-width: 480px){

}
</style>