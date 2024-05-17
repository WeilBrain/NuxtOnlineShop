<template>
  <Header/>
  <main>
    <section class="info">
      <div class="journey">
        <div class="container">
          <div class="journey__wrapper">
            <div class="journey__info">
              <HeadAbout
                  title="Our Journey"
                  description="Our story is one of continuous growth and evolution. We started as a small team with big dreams, determined to create a real estate platform that transcended the ordinary. Over the years, we've expanded our reach, forged valuable partnerships, and gained the trust of countless clients."
                  :mw65=true
              />
              <div class="dream__card-wrapper">
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
            <div class="journey__content">
              <img class="journey__image" src="/JourneySection/JourneyImage.png" alt="journey image">
            </div>
          </div>
        </div>
      </div>

      <div class="values">
        <div class="container">
          <div class="values__wrapper">
            <div class="values__text">
              <HeadAbout
                title="Our Values"
                description="Our story is one of continuous growth and evolution. We started as a small team with big dreams, determined to create a real estate platform that transcended the ordinary."
              />
            </div>
            <div class="values__content">
              <CardsCardTrust
                  class="values__card" v-for="(item, index) in ValuesData"
                  :key="index"
                  :img="item.image"
                  :title="item.title"
                  :description="item.description"
              />
            </div>
          </div>
        </div>
      </div>

      <div class="achievements">
        <div class="container">
          <HeadAbout
            title="Our Achievements"
            description="Our story is one of continuous growth and evolution. We started as a small team with big dreams, determined to create a real estate platform that transcended the ordinary."
          />
          <div class="achievements__wrapper">
            <CardInfo
                class="achievements__card"
              v-for="(item, index) in AchievementsData"
              :title="item.title"
              :description="item.description"
              :btn=item.btn
              :key="index"
                :btn-none="true"
            />
          </div>
        </div>
      </div>

      <div class="navigate">
        <div class="container">
          <HeadAbout
            title="Navigating the Estatein Experience"
            description="At Estatein, we've designed a straightforward process to help you find and purchase your dream property with ease. Here's a step-by-step guide to how it all works"
          />
          <div class="navigate__wrapper">
            <CardsCardStep
                class="card__step"
              v-for="item in StepData"
              :step-count=item.count
              :title="item.title"
              :description="item.description"
            />
          </div>
        </div>
      </div>

      <div class="contact">
        <div class="container">
          <HeadAbout
            title="Meet the Estatein Team"
            description="At Estatein, our success is driven by the dedication and expertise of our team. Get to know the people behind our mission to make your real estate dreams a reality."
          />
          <div class="contact__wrapper">
            <CardContact
                class="card__contact"
              v-for="(item, index) in ContactData"
              :key="index"
              :img=item.img
              :link=item.link
              :name=item.name
              :worker="item.worker"
            />
          </div>
        </div>
      </div>

      <div class="clients">
        <SwiperSection
          title="Our Valued Clients"
          description="At Estatein, we have had the privilege of working with a diverse range of clients across various industries. Here are some of the clients we've had the pleasure of serving"
          slider-per-view="2"
          linkBtn="/"
          :product-data="CorporationData"
        />
      </div>
    </section>
    <StartSection/>
  </main>
  <Footer/>
</template>

<script setup lang="ts">
import {CustomersData} from "~/components/Section/HomePage/DreamSection.data";
import Star from "~/components/UI/Star/Star.vue";
import {ValuesData, AchievementsData, StepData, ContactData, CorporationData} from "~/data/AboutPage.data";
import CardInfo from "~/components/Cards/CardInfo/CardInfo.vue";
import HeadAbout from "~/components/Cards/HeadAbout/HeadAbout.vue";
import CardContact from "~/components/Cards/CardContact/CardContact.vue";
import SwiperSection from "@/components/Section/SwiperSection/SwiperSection.vue";
import StartSection from "~/components/Section/StartSection/StartSection.vue";

useHead({
  title: 'Estatein shop | About',
  meta: [
    { name: 'description', content: 'About page - here you can read the detailed information' },
    { name: 'keywords', content: 'Nuxt, TypeScript, JavaScript, Vue, Express' },
  ],
})
</script>

<style scoped lang="scss">
@import "assets/scss/variables";
.title{
  @include font-w600-48px;
}
.description{
  @include font-W500-18px;
  color: gray;
}
.contact__wrapper{
  flex-wrap: wrap;
  row-gap: 4rem;
}
.journey {
  &__wrapper {
    padding-top: 10rem;
    display: flex;
    flex: 1;
    justify-content: space-between;
  }
  &__star {
    padding-top: 2.7rem;
    position: relative;
    left: -2%;
    max-width: 7rem;
  }

  &__title {
    padding-top: 1.5rem;
    @include font-w600-48px;
  }

  &__description {
    padding: 1.5rem 0 8rem;
    max-width: 74rem;
    @include font-W500-18px;
    color: $gray;
  }

  &__content {
    border-radius: 12px;
    border: 1px solid $gray-2626;
    background: center no-repeat url("/JourneySection/JourneyAbstract.svg");
  }
}


.dream {
  &__card-wrapper {
    display: flex;
  }
}

.dream__content__customers-card:not(:last-child){
  margin-right: calc(0rem + 15 * (100vw / 1900));
}


.values {
  padding-top: 15rem;
  &__wrapper {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  &__text {
  }

  &__title {
    @include font-w600-48px;
  }

  &__description {
    @include font-W500-18px;
    color: $gray;
    width: 51.7rem;
  }

  &__content {
    display: grid;
    grid-template-columns: 1fr 1fr;
    max-width: 100rem;
    padding: 6rem;
    border-radius: 12px;
    border: 1px solid var(--Grey-15, #262626);
    background: var(--Grey-08, #141414);
    box-shadow: 0px 0px 0px 10px #191919;
  }

  &__card {
      border-radius: 0;
      padding: 3rem;
    &:nth-child(1){
      border-right: 1px solid $gray-2626;
      border-bottom: 1px solid $gray-2626;
    }
    &:nth-child(2){
      border-left: 1px solid $gray-2626;
      border-bottom: 1px solid $gray-2626;
    }
    &:nth-child(3){
      border-top: 1px solid $gray-2626;
      border-right: 1px solid $gray-2626;
    }
    &:nth-child(4){
      border-left: 1px solid $gray-2626;
      border-top: 1px solid $gray-2626;
    }
  }
}

.achievements {
  padding-top: 11rem;
  &__title {
    @include font-w600-48px;
  }

  &__description {
    padding-top: 1.4rem;
    @include font-W500-18px;
    color: $gray;
  }

  &__wrapper {
    display: flex;
    justify-content: space-between;
  }

  &__card {
    border-radius: 12px;
    border: 1px solid var(--Grey-15, #262626);
    background: var(--Grey-08, #141414);
    box-shadow: 0px 0px 0px 8px #191919;
  }
}

.journey__info{
  margin-right: 2rem;
}

.navigate {
  padding-top: 13rem;
  &__description {
    padding-top: 1.4rem;
  }
  &__wrapper {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    row-gap: 4rem;
    column-gap: 1rem;
  }
}

.contact {
  padding-top: 8rem;
  &__wrapper {
    display: flex;
    justify-content: space-between;
  }
}

.values__text{
  max-width: 50rem;
}

.journey__image{
  width: 100%;
  height: 100%;
}

@media (max-width: 1024px){
  .journey__wrapper{
    align-items: center;

    justify-content: space-between;
  }
  .journey__image{
    width: 100%;
  }
  .journey__content{
    margin-left: 5rem;
  }
  .journey__info{
    margin-right: 0;
  }
  .values__wrapper{
    display: flex;
    flex-direction: column;
  }
  .values__text{
    padding-left: 1rem;
    max-width: 100%;
  }
  .contact__wrapper{
    display: flex;
    flex-wrap: wrap;
  }
  .navigate__wrapper{
    grid-template-columns: 1fr 1fr;
  }

}

@media (max-width: 768px){
  .journey__wrapper{
    flex-direction: column-reverse;
  }
  .journey__content{
    margin: 0;
  }
  .dream__card-wrapper{
    justify-content: center;
  }

  .navigate__wrapper{
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 2rem;
  }

  .values__content{
    grid-template-columns: 1fr;
  }
  .values__card:not(:last-child){
    margin-bottom: 3rem;
  }
  .contact__wrapper{
    row-gap: 3rem;
    justify-content: space-between;
  }
}
@media (max-width: 715px){
  .contact__wrapper{
    display: grid;
    grid-template-columns: 1fr;
    justify-items: center;
    row-gap: 3rem;
    align-items: center;
    justify-content: space-between;
  }
  .navigate__wrapper{
    grid-template-columns: 1fr;
    justify-items: center;
    justify-content: center;
  }
  .card__step:not(:last-child){
    margin-bottom: 5rem;
  }
  .achievements__wrapper{
    display: grid;
    grid-template-columns: 1fr;
    justify-items: center;
  }
}
@media (max-width: 480px){
}
</style>