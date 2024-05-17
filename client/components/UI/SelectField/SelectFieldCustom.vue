<template>
  <slot name="selectSlot"></slot>
  <div class="custom-select" ref="customSelectRef">
    <input
        class="input"
        type="text"
        :value="inputValue"
        :placeholder="placeholder"
        @input="updateSearch"
        @blur="handleBlur"
        :disabled="disabled"
        @click="handleClick"
    >
    <ul v-if="isOpen" class="options-list">
      <li
          class="options-list-item"
          v-for="(option, index) in filteredOptions"
          :key="index"
          @click="selectOption(option)"
      >
        {{ displayOption(option) }}
      </li>
    </ul>
    <span v-if="showClearIcon && inputValue !== ''" class="clear-icon" @click="clearInput">X</span>
  </div>
  <p v-if="errorMessage" class="error-message">{{ errorMessage }}</p>
</template>

<script setup lang="ts">
import {
  ref,
  computed,
  toRef,
  onMounted,
  onUnmounted,
} from "vue";
import { Field, useField } from 'vee-validate';

const props = defineProps({
  options: {
    type: Array as () => Array<string | { name: string }>,
    default: () => [],
  },
  showClearIcon: {
    type: Boolean,
    default: false,
  },
  placeholder: {
    type: String,
    default: "text",
  },
  modelValue: {
    type: String,
    default: "",
  },
  disabled: {
    type: Boolean,
    default: false,
  },
  errorMessage: String,
  name: {
    type: String,
    default: false
  },
  type: String,
  value: {
    type: String,
    default: '',
  },
});

const name = toRef(props, "name");

const {
  value: inputValue,
  errorMessage,
  handleBlur,
  handleChange,
  setValue,
} = useField(name, undefined, {
  initialValue: props.value,
});

const emits = defineEmits(["update:value"]);
const isOpen = ref(false);
const customSelectRef = ref<HTMLElement | null>(null);

const selectOption = (option: string | { name: string }) => {
  setValue(typeof option === "string" ? option : option.name);
  isOpen.value = false;
};

const displayOption = (option: string | { name: string }) => {
  return typeof option === "object" ? option.name : option;
};

const updateSearch = (event: Event) => {
  const searchValue = (event.target as HTMLInputElement).value.toLowerCase();
  setValue(searchValue);
};

const clearInput = () => {
  setValue("");
};

const toggleDropdown = () => {
  if (!props.disabled) {
    isOpen.value = !isOpen.value;
  }
};

const handleClick = () => {
  isOpen.value = true;
};

const handleClickOutside = (event: MouseEvent) => {
  if (customSelectRef.value && !customSelectRef.value.contains(event.target as Node)) {
    isOpen.value = false;
  }
};

onMounted(() => {
  window.addEventListener("click", handleClickOutside);
});

onUnmounted(() => {
  window.removeEventListener("click", handleClickOutside);
});

const filteredOptions = computed(() => {
  if (!inputValue) {
    // Если поле ввода пустое, возвращаем все опции
    return props.options;
  } else {
    // В противном случае фильтруем опции по введенному тексту
    return props.options.filter(option => {
      const optionText = typeof option === "object" ? option.name : option;
      return optionText.toLowerCase().includes(inputValue.value);
    });
  }
});



</script>



<style lang="scss" scoped>
@import "assets/scss/variables";

.custom-select {
  position: relative;
}

.input-container {
  position: relative;
}

.search-input {
  width: 100%;
  padding: 10px;
  // padding-right: 30px; /* Добавляем дополнительное правое заполнение для места под крестик */
  border: 1px solid #6e7884;
  color: #8f98a0;
  background: #23272b;
}

.clear-icon {
  position: absolute;
  top: 50%;
  right: 10px; /* Располагаем крестик справа от инпута */
  transform: translateY(-50%);
  cursor: pointer;
  color: #888; /* Цвет крестика, можно настроить по своему желанию */
  visibility: hidden;
  opacity: 0;
  display: flex;
}

.clear-icon.show {
  opacity: 1;
  visibility: visible;
}

.options-list {
  list-style: none;
  position: absolute;
  top: 100%;
  left: 0;
  right: 0;
  border: 1px solid $gray;
  background: $gray-2626;
  max-height: 500px;
  padding: 0.5rem;
  overflow-y: auto;
  z-index: 999;
  @include font-W500-18px;
}

.option {
  padding: 1rem;
  cursor: pointer;
  font-size: 1.5rem;
  transition: 0.15s;
  border-radius: 0.3rem;
  &:hover {
    background-color: #2e3439;
  }
}

.field-errors {
  color: #f93245;
  font-size: 1.3rem;
  line-height: 1.5;
}

/* Ваш файл CSS или блок <style> в компоненте */
.fade-enter-active {
  transition: opacity 0.3s;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
.options-list-item{
  cursor: pointer;
  padding: 0.5rem 0;
  transition: 0.3s ease;
}
.options-list-item:hover{
  color: #747474;
}
.input{
  border: 1px solid $gray-2626;
  padding: 1.6rem 2rem;
  width: 100%;
  height: 5.2rem;
  background: $gray-1A1A;
  @include font-W500-18px;
  color: #666;
  border-radius: 1rem;
}

.error-message{
  margin-top: 0.3rem;
  font-size: 1.6rem;
  color: red;
}

</style>
