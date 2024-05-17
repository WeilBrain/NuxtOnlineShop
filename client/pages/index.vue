<script setup lang="ts">
import DreamSection from "~/components/Section/HomePage/DreamSection.vue";
import SwiperSection from "~/components/Section/SwiperSection/SwiperSection.vue";
import {CardInfoDataHome} from "~/data/CardInfo.data";
import Footer from "~/components/Footer/Footer.vue";
import StartSection from "~/components/Section/StartSection/StartSection.vue";
import ProductService from '@/Services/ShortProducts'
import ReviewsService from '~/Services/Reviews'

const ShortProductData = ref<any[]>([]);
const ReviewsData = ref<any[]>([]);

onMounted(async () => {
  try {
    ShortProductData.value = await ProductService.getProducts();
    ReviewsData.value = await ReviewsService.getReviews();
  } catch (error) {
    console.error('Ошибка при начальной загрузке данных:', error);
  }
});

useHead({
  title: 'Estatein shop | Home',
  meta: [
    { name: 'description', content: 'Home page for the sale of apartments and houses' },
    { name: 'keywords', content: 'Estatein, shop, real estate, apartments, houses, home decor, furniture, electronics, clothing, accessories' }
  ],
})

</script>

<template>
    <Header/>
    <main>
      <h1 class="h1none">Estain market</h1>
      <DreamSection/>
      <section class="DetailsCompany">
        <SwiperSection :slider-per-group="3" :slider-per-view="3" :productData="ShortProductData" linkBtn="/" title="What Our Clients Say" description="Read the success stories and heartfelt testimonials from our valued clients. Discover why they chose Estatein for their real estate needs."/>
        <SwiperSection :slider-per-group="3" :slider-per-view="3" :productData="ReviewsData" linkBtn="/" title="What Our Clients Say" description="Read the success stories and heartfelt testimonials from our valued clients. Discover why they chose Estatein for their real estate needs."/>
        <SwiperSection :slider-per-group="3" :slider-per-view="3" :productData="CardInfoDataHome" linkBtn="/" title="Frequently Asked Questions" description="Find answers to common questions about Estatein's services, property listings, and the real estate process. We're here to provide clarity and assist you every step of the way."/>
      </section>
      <StartSection/>
    </main>
    <Footer/>
</template>

<style lang="scss" scoped>
@import "assets/scss/variables";
.h1none{
  display: none;
}

.loading{
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
}
</style>