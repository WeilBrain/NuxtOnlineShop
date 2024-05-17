<script setup lang="ts">
const swiper = useSwiper()
</script>

<template>
  <div class="btn__wrapper">
    <button class="btn btn-prev" @click="swiper.slidePrev()"></button>
    <button class="btn btn-next" @click="swiper.slideNext()"></button>
  </div>
</template>

<style lang="scss" scoped>
@import '/assets/scss/variables';
.btn {
  border-radius: 69px;
  border: 1px solid $gray-2626;
  background-color: $gray-1A1A;
  padding: 2.7rem;
  cursor: pointer;
  &:not(:first-child){
    margin-left: 2rem;
  }
}

.btn-next {
  background: no-repeat center url("/SwiperControls/arrow.svg");
}

.btn-prev {
  background: no-repeat center url("/SwiperControls/arrow.svg");
  transform: rotate(180deg);
}

</style>