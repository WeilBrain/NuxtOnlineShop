<template>
  <div class="cardLink">
    <div class="cardLink__wrapper">
      <NuxtLink :to=link class="cardLink__link" />
      <div class="cardLink__item">
        <img :src=image class="cardLink__image"  />
        <span class="cardLink__text">{{ text }}</span>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
const props = defineProps(['image', 'text', 'link'])
</script>

<style scoped lang="scss">
.cardLink {
  position: relative;
  display: flex;
  justify-content: center;
  border-radius: 12px;
  border: 1px solid #262626;
  background: #1A1A1A;
  width: 100%;
  height: 20.12rem;
  overflow: hidden; /* Чтобы создать эффект clip при анимации */
  transition: all 0.3s ease-out;

  &:hover {
    transform: scale(1.05);
  }

  &__wrapper {
    display: flex;
    align-items: center;
  }

  &__item {
    display: flex;
    align-items: center;
    flex-direction: column;
  }

  &__link {
    cursor: pointer;
    position: absolute;
    top: 10%;
    right: 5%;
    width: 2.4rem;
    height: 2.4rem;
    background-image: url("/arrowGray.svg");
    background-repeat: no-repeat;
    background-position: center;
  }

  &__image {
    max-width: 8rem;
    max-height: 8rem;
    transition: all 0.3s ease-out;
  }

  &__text {
    padding-top: 2rem;
    color: #FFF;
    text-align: center;
    font-size: 20px;
    font-style: normal;
    font-weight: 600;
  }

  &:hover &__image {
    transform: rotate(20deg) scale(1.1);
  }

  @keyframes wave {
    0% {
      transform: translateY(0);
    }
    50% {
      transform: translateY(-10%);
    }
    100% {
      transform: translateY(0);
    }
  }

  &:hover &__text {
    animation: wave 0.5s ease-in-out infinite;
  }
}

@media (max-width: 1024px){
  .cardLink__text{
    font-size: 1.4rem;
  }
  .cardLink{
    max-width: 18rem;
  }
  .cardLink__text{
    font-size: 1.2rem;
  }
}
</style>