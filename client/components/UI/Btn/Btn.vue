<template>
  <button :disabled="props.disabled" class="v-btn" :class="className">
    {{ title }}
  </button>
</template>

<script setup>
import {computed } from 'vue';
  const props = defineProps(
      {
        title: {
          type: String,
          default: null,
        },
        purple:{
          type: Boolean,
          default: false
        },
        search:{
          type: Boolean,
          default: false
        },
        disabled:{
          type: Boolean,
          default: false
        }
      },
  )
  const className = computed(() => ({
    'v-btn__purple': props.purple,
    'v-btn__search': props.search,
    'v-btn__disabled': props.disabled,
  }),)

</script>

<style scoped lang="scss">
@import "assets/scss/variables";
.v-btn {
  border-radius: 1rem;
  padding: 1.8rem 2.4rem;
  max-width: 18.5rem;
  height: 6.3rem;
  background-color: $gray-2626;
  @include font-W500-18px;
  border: 1px solid rgb(38, 38, 38);
  box-sizing: border-box;
  cursor: pointer;
  transition: 0.3s ease-in-out;

  &__disabled{
    background-color: #ccc; /* Серый цвет фона */
    color: #666; /* Темный цвет текста */
    cursor: not-allowed; /* Курсор "не допускается" */
    opacity: 0.6; /* Уменьшенная непрозрачность */
  }

  &:hover {
    background-color: #363636;
  }

  &__purple {
    background: $purple;

    &:hover {
      background-color: #4515c5;
    }
  }

  &__search {
    padding-right: 2rem;
  }
}
.v-btn:disabled {
  background-color: #ccc; /* Серый цвет фона */
  color: #666; /* Темный цвет текста */
  cursor: not-allowed; /* Курсор "не допускается" */
  opacity: 0.6; /* Уменьшенная непрозрачность */
}
.v-btn__search{
  border-radius: 10rem;
  height: 5rem;
  transition: filter 0.2s ease;
}
.v-btn__search::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-image: url("/search.svg");
  background-position: center;
  background-repeat: no-repeat;
}

</style>