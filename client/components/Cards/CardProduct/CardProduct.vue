<template>
  <div class="card-product">
    <div class="card-product__wrapper">
      <img class="card-product__image" :src="image" />
      <h3 class="card-product__title">{{ title }}</h3>
      <p class="card-product__description">{{ description }}<NuxtLink class="card-product__more--link" :to="`/product/${props.id}`">Read More</NuxtLink></p>
      <div class="card-products__icons">
        <IconProduct class="icon" v-for="(icon, index) in getIcons" :key="index" :text="icon.text" :villa="icon.villa" :img="icon.icon" />
      </div>
      <div class="card-product__price">
        <div class="card-product__price--rectaling">
          <span class="card-product__price-text">Price</span>
          <h3 class="card-product__price-count">{{ formattedPrice }}</h3>
        </div>
        <UIBtnLink title="View Property Details" :link="`/product/${props.id}`" @click="GetIdCard" :widePurple="true" />
      </div>
    </div>
  </div>
</template>


<script setup lang="ts">
import IconProduct from "~/components/UI/IconProduct/IconProduct.vue";
const props = defineProps(["id", "image", "title", "description", "link", "price", "bedroom", 'bathroom', 'villa']); // Используем общие данные
// Функция для получения иконок в соответствии с типом продукта
const getIcons = computed(() => {
  const icons = [];
  if (props.bedroom) {
    icons.push({ icon: "/Product/bedroom.svg", text: `${props.bedroom}-Bedroom`, villa: false });
  }
  if (props.bathroom) {
    icons.push({ icon: "/Product/bathroom.svg", text: `${props.bathroom}-Bathroom`, villa: false });
  }
  if (props.villa) {
    icons.push({ icon: "/Product/villa.svg", text: "Villa", villa: true });
  }
  return icons;
});
const formattedPrice = props.price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

const emit = defineEmits(['GetIdCard'])

const GetIdCard = () => {
  emit('GetIdCard', props.id);
};
</script>

<style scoped lang="scss">
.card-product {
  &__wrapper {
    max-width: 51.2rem;
    height: 100%;
    padding: 4rem;
    border-radius: 12px;
    border: 1px solid var(--Grey-15, #262626);
    background: var(--Grey-08, #141414);
  }

  &__image {
    width: 100%;
    transition: 0.5s ease;
    &:hover{
      transform: scale(1.05);
    }
  }

  &__title {
    margin-top: 3rem;
    margin-bottom: 1rem;
    color:#FFF;
    font-size: 24px;
    font-style: normal;
    font-weight: 600;
    transition: color 0.3s ease-out;
    &:hover{
      color: #a4a4a4;
    }
  }

  &__description {
    color: #999;
    font-size: 18px;
    font-style: normal;
    font-weight: 500;
    line-height: 150%;
    transition: color 0.2s ease-in-out;
    &:hover{
      color: #cecece;
    }
  }

  &__more--link {
    padding-left: 0.5rem;
    color: white;
    font-size: 18px;
    font-style: normal;
    font-weight: 500;
  }

  &__price {
    display: flex;
    justify-content: space-between;
  }

  &__price-text {
    color:#999;
    font-size: 18px;
    font-style: normal;
    font-weight: 500;
    line-height: 150%; /* 27px */
  }

  &__price-count {
    color: white;
    font-size: 24px;
    font-style: normal;
    font-weight: 600;
    line-height: 150%; /* 36px */
    transition: all 0.5s ease-in-out;
    &:hover{
      color: #b2b2b2;
      transform: scale(1.10);
    }
  }
}

.card-products {
  &__icons {
    flex-wrap: wrap;
    display: flex;
    align-items: center;
    padding: 3rem 0 3rem;
    row-gap: 1rem;
  }
}

.icon:not(:last-child){
  margin-right: 1rem;
}
@media (max-width: 1400px){
  .card-product {
    &__image {
      max-width: 105%;
    }
    &__price {
      flex-wrap: wrap;
    }
    &__price--rectaling {
      margin-bottom: 1rem;
    }
  }
}

@media (max-width: 1024px){
  .card-product {
    max-width: 31rem;
    &__wrapper {
      padding: 2rem;
      border-radius: 12px;
      border: 1px solid var(--Grey-15, #262626);
      background: var(--Grey-08, #141414);
    }

    &__image {
      max-width: 100%;
      transition: 0.5s ease;
      &:hover{
        transform: scale(1.05);
      }
    }

    &__title {
      margin-top: 3rem;
      margin-bottom: 1rem;
      color:#FFF;
      font-size: 2rem;
      font-style: normal;
      font-weight: 600;
      transition: color 0.3s ease-out;
      &:hover{
        color: #a4a4a4;
      }
    }

    &__description {
      color: #999;
      font-size: 1.6rem;
      font-style: normal;
      font-weight: 500;
      line-height: 150%;
      transition: color 0.2s ease-in-out;
      &:hover{
        color: #cecece;
      }
    }

    &__more--link {
      padding-left: 0.5rem;
      color: white;
      font-size: 1.6rem;
      font-style: normal;
      font-weight: 500;
    }

    &__price {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
    }

    &__price--rectaling {
    }

    &__price-text {
      color:#999;
      font-size: 1.4rem;
      font-style: normal;
      font-weight: 500;
      line-height: 150%; /* 27px */
    }

    &__price-count {
      color: white;
      font-size: 2rem;
      font-style: normal;
      font-weight: 600;
      line-height: 150%; /* 36px */
      transition: all 0.5s ease-in-out;
      &:hover{
        color: #b2b2b2;
        transform: scale(1.10);
      }
    }
  }

  .card-products {
    &__icons {
      display: flex;
      padding: 3rem 0 3rem;
    }
  }

  .icon:not(:last-child){
    margin-right: 1rem;
  }
}

@media (max-width: 768px){
  .card-product__description{
    font-size: 1.4rem;
  }
  .card-product__title{
    font-size: 1.6rem;
  }
  .card-products__icons{
    flex-wrap: wrap;
  }
  .card-product{
    max-width: 100%;
    height: 52rem;
  }
}

</style>