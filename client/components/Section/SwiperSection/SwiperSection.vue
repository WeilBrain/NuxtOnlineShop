// SwiperSection.vue
<template>
  <div class="swiper-start">
    <div class="container">
      <div class="swiper__info">
        <div>
          <img class="swiper__star" src="/AbstractStar.svg" alt="star image">
          <h2 class="swiper__title">{{ title }}</h2>
          <p class="swiper__description">{{ description }}</p>
        </div>
        <div class="swiper__button">
          <UIBtnLink title="View All Properties" :link=linkBtn />
        </div>
      </div>
      <Swiper
          class="swiper__wrapper"
          :modules="[SwiperAutoplay, SwiperPagination]"
          :slides-per-view='sliderPerView'
          :slides-per-group='sliderPerGroup'
          :pagination="{ type: 'fraction', el: '.swiper-pagination'}"
          :initial-slide='0'
          :space-between="10"
          :autoplay="{ delay: 18000, disableOnInteraction: true }"
          :speed="1000"
          :breakpoints="{
          1024: {
            slidesPerView: 3,
            spaceBetween: 20
          },
          768:{
            slidesPerView: 2.5,
            slidesPerGroup: 2,
          },
          480:{
            slidesPerView: 2,
            slidesPerGroup: 2,
            spaceBetween: 20
          },
          300:{
            slidesPerView:1,
            slidesPerGroup: 1,
            spaceBetween: 5
          }
        }"
      >
        <SwiperSlide v-for="(card, index) in productData" :key="index">
          <DynamicCard :type="card.type" :data="card" @getIdCard="handleGetIdCard"/>
        </SwiperSlide>
        <div class="swiper__data">
          <div class="swiper-pagination" slot="pagination"></div>
          <SwiperControls class="swiper__controls"/>
        </div>
      </Swiper>

      <div>

      </div>

    </div>
  </div>
</template>

<script setup lang="ts">

import DynamicCard from '@/components/DynamicCard/DynamicCard.vue';
import SwiperControls from "~/components/Section/SwiperSection/SwiperControls.vue";
const props = defineProps(['productData', 'title', 'description', 'linkBtn', 'sliderPerView', 'sliderPerGroup', 'initialSlide']);

const emit = defineEmits(['getIdCard']);

const handleGetIdCard = (id: number) => {
  emit('getIdCard', id);
};
</script>

<style scoped lang="scss">
@import '/assets/scss/variables';
.swiper-pagination-current{
  color: $white;
}

.swiper__controls{
  display: flex;
  justify-content: flex-end;
  padding-right: 2rem;
  position: relative;
  z-index: 998;
  top: 20px;
}

.swiper__data{
  margin-top: 4rem;
  padding-bottom: 2rem;
  max-width: 100%;
  border-top: 1px solid $gray-2626;
}
.swiper-start{
  margin-top: 10rem;
  position: relative;
}
.swiper {
  margin-top: 2rem;
  position: relative;
  &__wrapper{
    padding-top: 8rem;
  }
  &__star {
    position: relative;
    left: -2%;
    max-width: 7rem;
  }

  &__title {
    @include font-w600-48px;
    padding: 1.8rem 0 1.4rem;
  }

  &__description {
    max-width: 123rem;
    @include font-W500-18px;
    color: $gray;
  }
  &__info{
    display: flex;
    align-items: flex-end;
    justify-content: space-between;
    height: 18rem;
  }
}

.swiper-pagination{
  padding: 2rem 0 1.5rem 2rem;
  text-align: left;
  @include font-W600-24px ;
}
.swiper-pagination .swiper-pagination-current{
  color: white !important;
}
.swiper-pagination .swiper-pagination-total{
  color: gray;
}

@media (max-width: 768px){
  .swiper__info{
    flex-wrap: wrap;
  }
  .swiper__description{
    margin-bottom: 1.5rem;
  }
}
@media (max-width: 480px){
  .swiper__title{
    font-size: 3.4rem;
  }
  .swiper__description{
    font-size: 1.2rem;
  }

  .swiper__data{
    margin-top: 2rem;
  }
}
</style>