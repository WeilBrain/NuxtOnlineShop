//DynamicCard
<template>
  <component :is="getComponentType" v-bind="data"/>
</template>

<script setup lang="ts">
import ProductCard from '@/components/Cards/CardProduct/CardProduct.vue';
import ReviewCard from '@/components/Reviews/Reviews.vue';
import CardInfo from "~/components/Cards/CardInfo/CardInfo.vue";
import CardCorporation from "~/components/Cards/CardCorporation/CardCorporation.vue";

const props = defineProps(['type', 'data']);

const getComponentType = computed(() => {
  switch (props.type) {
    case 'product':
      return ProductCard;
    case 'reviews':
      return ReviewCard;
    case 'cardInfo':
      return CardInfo;
    case 'cardCorporation':
      return CardCorporation
    default:
      return null; // Возвращай компонент по умолчанию или обрабатывай ошибку
  }
});

</script>
