<template>
  <section class="dream">
      <div class="dream__container">
        <div class="dream__content">

          <div class="dream__arrow">
            <div class="dream__arrow-text">
              <svg class="circle" viewBox="0 0 100 100">
                <path id="circle" d="M 0,50 a 50,50 0 1,1 0,1 z"/>
                <text>
                  <textPath xlink:href="#circle" class="circle-text" textLength="315">
                    Discover Your dream Property✨
                  </textPath>
                </text>
              </svg>
            </div>
              <NuxtLink class="dream__arrow-link" to="/">
                <img class="dream__arrow-link--image" src="/SectionDream/arrow.svg" alt="arrow image">
              </NuxtLink>
          </div>


          <div class="dream__content-left">
            <h2 class="dream__content__title">Discover Your Dream Property with Estatein</h2>
            <p class="dream__content__description">Your journey to finding the perfect property begins here. Explore our listings to find the home that matches your dreams.</p>
            <nav class="dream__content__nav">
              <UIBtnLink
                  class="dream__content__nav-item"
                  title="Learn More"
                  link="/"
              />
              <UIBtnLink
                  title="Browse Properties"
                  link="/"
                  :purple=true
              />
            </nav>
            <div class="dream__content__customers">
              <CardsCardText
                  class="dream__content__customers-card"
                  v-for="item in CustomersData"
                  :key=item.title
                  :title=item.title
                  :description=item.description
                  :big=true
              />
            </div>
          </div>
          <div class="dream__content-right">
            <img src="/SectionDream/image.png" alt="HomePage home image" class="desktop-image">
            <img src="/SectionDream/imagelaptop.png" alt="HomePage home image" class="mobile-image">
            <img src="/SectionDream/imageMobile.png" alt="HomePage home image" class="mobile-image-480">
          </div>
        </div>
      </div>

      <div class="dream__card-wrapper">
        <CardLink
            class="dream__card-rectangle"
            v-for="item in DreamCardData"
            :key=item.title
            :image=item.image
            :text=item.title
            :link=item.link
        />
      </div>

  </section>
</template>

<script setup lang="ts">

import {CustomersData, DreamCardData} from "~/components/Section/HomePage/DreamSection.data";
import CardLink from "~/components/Cards/CardLink/CardLink.vue";
</script>

<style scoped lang="scss">
@import "assets/scss/variables";

.mobile-image-480{
  display: none;
}


.dream {
  &__container{
    padding-left: 8.44vw;
  }

  &__content {
    position: relative;
    display: grid;
    grid-template-columns: 50% 50%;
    &__title {
      @include font-W600-60px;
    }

    &__description {
      @include font-W500-18px;
      color: $gray;
      padding: 2.4rem 0 6rem;
    }

    &__nav {
      display: flex;
      padding-bottom: 6rem;
    }

    &__nav-item:not(:last-child) {
      margin-right: 2rem;
    }

    &__customers {
      display: flex;
    }

    &__customers-card:not(:last-child) {
      margin-right: 2rem;
    }
  }


  &__content-left {
    padding: 2rem 6rem 2rem 0;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  &__content-right {

    background-color: $gray-1A1A;
    background-image: url("/SectionDream/abstractForImage.svg");
    background-repeat: no-repeat;
    background-size: cover;
  }
}
.dream {
  &__card-wrapper {
    padding: 2rem;
    display: flex;
    justify-content: space-between;
    border: 1px solid $gray-2626;
    background: $gray-1414;
    box-shadow: 0 10px #191919;
  }

  &__card-rectangle:not(:last-child) {
    margin-right: 2rem;
  }
}

.circle {
  display: block;
  overflow: visible;
  width: 110px;
  font-size: 28px;
  @include font-w600-15px;
  fill: $white;
}

.circle path {
  fill: none;
}

.desktop-image, .mobile-image{
  width: 100%;
  height: 100%;
}
.mobile-image{
  height: 97%;
}
.dream {
  &__arrow {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }

  &__arrow-text {
    border-radius: 159.091px;
    border: 1.591px solid var(--Grey-15, #262626);
    background: var(--Grey-08, #141414);
    padding: 2.5rem;
  }

  &__arrow-link {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);

    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 89.091px;
    border: 1.591px solid $gray-2626;
    background: $gray-1A1A;
    width: 79.545px;
    height: 79.545px;
  }

  &__arrow-link--image {
    width: 2.4rem;
    height: 2.4rem;
  }
}

.circle {
  animation: rotate 10s linear infinite;
}

@keyframes rotate {
  100% {
    transform: rotate(360deg);
  }
}

/* Стили для изображения на настольных устройствах */
.desktop-image {
  display: block;
}

/* Стили для изображения на мобильных устройствах */
.mobile-image {
  display: none;
}

@media (max-width: 1024px){
  .desktop-image {
    display: none;
  }

  .mobile-image {
    display: block;
    margin-top: 1.5rem;
  }

  .dream__title{
    font-size: 2rem;
  }
}





@media (max-width: 1024px) and (min-width: 768px) {

}

@media (max-width: 768px) {
  .dream__content{
    grid-template-columns: 1fr;
  }
  .dream__content-left{
    grid-row: 2;
  }
  .dream__content-right{
    grid-row: 1;
    height: 67.5rem;
  }
  .mobile-image{
    height: 67.5rem;
  }
  .dream__arrow{
    top: 60%;
  }
  .dream__content__title{
    padding-top: 10rem;
    text-align: center;
  }
  .dream__content__description{
    text-align: center;
  }
  .mobile-image{
    margin-top: 0;
    width: 100%;
  }
  .dream__container{
    padding-left: 0;
  }
  .dream__content-left{
    padding: 0 2rem 0 2rem;
  }
  .dream__content__customers{
    justify-content: center;
  }
  .dream__content__nav{
    justify-content: center;
  }
  .dream__card-wrapper{
    margin-top: 4rem;
  }
}

@media (max-width: 480px){
  .mobile-image-480{
    display: block;
    width: 100%;
  }
  .dream__content-right{
    height: 100%;
  }
  .mobile-image{
    display: none;
  }
  .dream__content__customers{
    justify-items: center;
  }
  .dream__content__customers-card:not(:last-child){
    margin-bottom: 2rem;
  }
  .dream__content__customers-card{
    max-height: 10rem;
  }
  .dream__card-wrapper{
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 2rem;
    padding: 2rem;
  }
  .dream__card-rectangle{
    margin-right: 0 !important;
  }
  .dream__arrow{
    top: 40%;
  }
}

</style>