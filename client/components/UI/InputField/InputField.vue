<template>
  <div v-if="label" class="inputs__wrapper">
    <label v-if="label" class="inputs__title">{{labelText}}</label>
    <input
        class="inputs"
        :placeholder="placeholder"
        :value="modelValue"
        @input="onInput"
        @blur="$emit('blur')"
        v-if="phone"
        v-maska
        data-maska="+# (###) ###-##-##"
    />
    <input
        class="inputs"
        :placeholder="placeholder"
        :value="modelValue"
        @input="$emit('update:modelValue', $event.target.value)"
        @blur="$emit('blur')"
        v-else
    />
    <p v-if="errorMessage" class="error-message">{{ errorMessage }}</p>
  </div>
</template>

<script setup lang="ts">
import { defineProps, computed, ref } from 'vue';

const props = defineProps({
  label: Boolean,
  labelText: String,
  type: String,
  placeholder: String,
  modelValue: String,
  phone: {type: Boolean, default: false},
  errorMessage: String,
});

const emit = defineEmits(['update:modelValue', 'blur']);

const formattedValue = ref(props.modelValue);

const onInput = (event: Event) => {
  const input = event.target as HTMLInputElement;
  let value = input.value;

  // If phone prop is true, remove non-digit characters
  if (props.phone) {
    value = value.replace(/\D/g, '');
  }

  formattedValue.value = value;
  emit('update:modelValue', value);
};


</script>




<style scoped lang="scss">
@import "/assets/scss/variables";

.inputs {
  @include font-W500-18px;
  background-color: $gray-1A1A;
  padding: 2.4rem 2rem;
  border: 1px solid $gray-2626;
  border-radius: 1rem;
  width: 100%; /* Растягивается на всю ширину */
  max-height: 5.2rem;
  &__wrapper {
    width: 100%;
    display: flex;
    flex-direction: column;
  }

  &__title {
    padding-bottom: 1.6rem;
    color: $white;
    @include font-W500-20px;
  }
}

@media (max-width: 1024px) {
  .inputs {
    font-size: 1.4rem;
    &__wrapper {
    }

    &__title {
      font-size: 1.6rem;
    }
  }
}

.error-message{
  margin-top: 0.3rem;
  font-size: 1.6rem;
  color: red;
}
</style>