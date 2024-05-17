<script setup lang="ts">

import {DreamCardData} from "~/components/Section/HomePage/DreamSection.data";
import CardLink from "~/components/Cards/CardLink/CardLink.vue";
import HeadAbout from "~/components/Cards/HeadAbout/HeadAbout.vue";
import StartSection from "~/components/Section/StartSection/StartSection.vue";
</script>

<template>
  <Header/>
  <main>
    <section class="elevate">
      <div class="container">
        <div class="elevate__head">
          <h2 class="elevate__head-title">Elevate Your Real Estate Experience</h2>
          <p class="elevate__head-description">Welcome to Estatein, where your real estate aspirations meet expert guidance. Explore our comprehensive range of services, each designed to cater to your unique needs and dreams.</p>
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
    <section class="service">
      <div class="container">
        <div class="service__content">
          <HeadAbout
              title="Unlock Property Value"
              description="Selling your property should be a rewarding experience, and at Estatein, we make sure it is. Our Property Selling Service is designed to maximize the value of your property, ensuring you get the best deal possible. Explore the categories below to see how we can help you at every step of your selling journey"
          />
          <div class="service__wrapper">
            <CardsCardTrust class="service__card" img="/valuation.png" :border-none="true" title="Valuation Mastery" description="Discover the true worth of your property with our expert valuation services."/>
            <CardsCardTrust class="service__card" img="/valuation.png" :border-none="true" title="Valuation Mastery" description="Discover the true worth of your property with our expert valuation services."/>
            <CardsCardTrust class="service__card" img="/valuation.png" :border-none="true" title="Valuation Mastery" description="Discover the true worth of your property with our expert valuation services."/>
            <CardsCardTrust class="service__card" img="/valuation.png" :border-none="true" title="Valuation Mastery" description="Discover the true worth of your property with our expert valuation services."/>
            <CardsCardLearnMore title="Unlock the Value of Your Property Today" description="Ready to unlock the true value of your property? Explore our Property Selling Service categories and let us help you achieve the best deal possible for your valuable asset." link="/" />
          </div>
        </div>
        <div class="service__content">
          <HeadAbout
              title="Unlock Property Value"
              description="Selling your property should be a rewarding experience, and at Estatein, we make sure it is. Our Property Selling Service is designed to maximize the value of your property, ensuring you get the best deal possible. Explore the categories below to see how we can help you at every step of your selling journey"
          />
          <div class="service__wrapper">
            <CardsCardTrust class="service__card" img="/valuation.png" :border-none="true" title="Valuation Mastery" description="Discover the true worth of your property with our expert valuation services."/>
            <CardsCardTrust class="service__card" img="/valuation.png" :border-none="true" title="Valuation Mastery" description="Discover the true worth of your property with our expert valuation services."/>
            <CardsCardTrust class="service__card" img="/valuation.png" :border-none="true" title="Valuation Mastery" description="Discover the true worth of your property with our expert valuation services."/>
            <CardsCardTrust class="service__card" img="/valuation.png" :border-none="true" title="Valuation Mastery" description="Discover the true worth of your property with our expert valuation services."/>
            <CardsCardLearnMore title="Unlock the Value of Your Property Today" description="Ready to unlock the true value of your property? Explore our Property Selling Service categories and let us help you achieve the best deal possible for your valuable asset." link="/" />
          </div>
        </div>
        <div class="service__content service__content-last">
          <div class="service__item service__item-last">
            <HeadAbout
                title="Unlock Property Value"
                description="Selling your property should be a rewarding experience, and at Estatein, we make sure it is. Our Property Selling Service is designed to maximize the value of your property, ensuring you get the best deal possible. Explore the categories below to see how we can help you at every step of your selling journey"
            />
            <CardsCardLearnMore :TextSmall="true" :maxWidth="true" :img-default="false" :btnBottom="true" title="Unlock Your Investment Potential" description="Explore our Property Management Service categories and let us handle the complexities while you enjoy the benefits of property ownership." link="/" />
          </div>
          <div class="service__wrapper-last">
            <CardsCardTrust class="service__card-last"  img="/valuation.png" :border-none="true" title="Market Insight" description="Stay ahead of market trends with our expert Market Analysis. We provide in-depth insights into real estate market conditions"/>
            <CardsCardTrust class="service__card-last"  img="/valuation.png" :border-none="true" title="ROI Assessment" description="Make investment decisions with confidence. Our ROI Assessment services evaluate the potential returns on your investments"/>
            <CardsCardTrust class="service__card-last" img="/valuation.png" :border-none="true" title="Customized Strategies" description="Every investor is unique, and so are their goals. We develop Customized Investment Strategies tailored to your specific needs"/>
            <CardsCardTrust class="service__card-last" img="/valuation.png" :border-none="true" title="Diversification Mastery" description="Diversify your real estate portfolio effectively. Our experts guide you in spreading your investments across various property types and locations"/>
          </div>
        </div>
      </div>
    </section>
  </main>
  <StartSection/>
  <Footer/>
</template>

<style scoped lang="scss">
@import "/assets/scss/variables";
.elevate {
  background: linear-gradient(80deg, $gray-2626 0%, $gray-1A1A 25%);
  &__head {
    padding: 15rem 0 10rem 0;
  }

  &__head-title {
    @include font-w600-48px;
    padding-bottom: 1.5rem;
  }

  &__head-description {
    @include font-W500-18px;
  }
}

.dream__card-wrapper{
  padding: 2rem;
  display: flex;
  justify-content: space-between;
  border: 1px solid $gray-2626;
  background-color: $gray-1818 !important;
}

.service__wrapper{
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}
.service__wrapper, .service__wrapper-last{
  row-gap: 2rem;
}
.service__item-last{
  max-width: 52rem;
}

.service__content-last{
  margin-top: 15rem;
  margin-bottom: 15rem;
  display: flex;
  flex: 1;
  justify-content: space-between;
  align-items: center;
}

.service__wrapper-last{
  margin-top: 7.5rem;
  max-width: 99rem;
  max-height: 59rem;
  background: $gray-1A1A;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}


@media (max-width: 1024px){

  .service__card-last:not(:last-child){
    margin-bottom: 1rem;
  }
  .service__wrapper-last{
    display: block;
    max-height: 100%;
  }
}

@media (max-width: 480px){
  .dream__card-wrapper{
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-template-rows: 22rem;
    justify-items: center;
  }

  .service__content-last{
    flex-direction: column;
  }
}
.dream__card-rectangle{
  margin: 0 1rem;
}
</style>