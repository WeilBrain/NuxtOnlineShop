<script setup lang="ts">
import { defineProps } from 'vue';

interface OptionItem {
  value: string | number;
  optionItem: string;
}

const props = defineProps({
  label: Boolean,
  labelText: String,
  holder: String,
  image: String,
  title: Boolean,
  big: Boolean,
  modelValue: String,
  optionsList: {
    type: Array as () => Array<OptionItem>,
    required: true
  },
  name: {
    type: String,
    required: false,
  },
  show_error: {
    type: Boolean,
    default: false,
  },
});

const emits = defineEmits(["update:modelValue"]);

const updateModelValue = (value: string) => {
  emits("update:modelValue", value); // Обновляет modelValue при изменении значения
};

</script>


<template>
  <div class="selects__wrapper">
    <label class="selects__title" v-if="label">{{ labelText }}</label>
    <select @input="updateModelValue($event.target.value)" :name="name" :id="name" :value="modelValue" class="selects" :style="!label ? { backgroundImage: `url(${image})` } : null" :class="{ 'none-image': title, 'big': big }">
      <option class="selects__holder" disabled selected hidden>{{ holder }}</option>
      <option  class="selects__list" v-for="(item, index) in optionsList" :key="index" :value="item.value">{{ item.optionItem }}</option>
    </select>
  </div>
</template>


<style scoped lang="scss">
@import 'assets/scss/variables';
.selects {
  margin-top: 1rem;
  padding: 3rem 0 3rem 5rem;
  border: 1px solid rgb(38, 38, 38);
  border-radius: 12px;
  background-color: rgb(20, 20, 20);
  background-repeat: no-repeat;
  background-position: 10% center;
  color: white;
  font-weight: 500;
  font-size: 20px;
  width: 100%;
}

.selects.big {
  width: 100%; /* Если нужно немного меньше ширины, но всё еще резиново */
  padding: 2rem 2rem !important;
}


.selects__title{
  @include font-W500-20px;
  padding-bottom: 1.6rem;
  color: $white;
}

.none-image{
  padding-left: 2rem;
  padding-right: 1rem !important;
  background: #1a1a1a;
}


@media (max-width: 1024px) {

  .selects {
    font-size: 1.4rem;
    &__title {
      font-size: 1.6rem;
    }
  }
}

@media (max-width: 768px){
  .selects{
    padding: 2.5rem 0 2.5rem 3.3rem;
    font-size: 1.2rem;
    background-position: 1.5rem;
  }
}

.selects__wrapper{
  width: 100%;
}
</style>