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
            v-for="item in DreamCardDataContact"
            :key=item.title
            :image=item.image
            :text=item.title
            :link=item.link
        />
      </div>
    </section>
    <section class="connect">
      <div class="container">
        <div class="connect__content">
          <HeadAbout
            title="Inquire About Seaside Serenity Villa"
            description="Interested in this property? Fill out the form below, and our real estate experts will get back to you with more details, including scheduling a viewing and answering any questions you may have."
          />
          <div class="connect__wrapper">
            <InputField class="connect__input" :label="true" label-text="First Name" type="text" placeholder="Enter First Name" />
            <InputField class="connect__input" :label="true" label-text="Last Name" type="text" placeholder="Enter Last Name" />
            <InputField class="connect__input" :label="true" label-text="Email" type="text" placeholder="Enter your Email" />
            <InputField class="connect__input" :label="true" label-text="Phone" type="text" placeholder="Enter Phone Number" />
            <SelectField class="connect__select" :options="SelectSixContact"/>
            <SelectField class="connect__select" :options="SelectSevenContact"/>
            <div class="feedback__item">
              <div class="feedback__message-wrapper">
                <h2 class="feedback__message-title">Message</h2>
                <textarea class="feedback__message-input" placeholder="Enter your Message here..."></textarea>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="discover">
      <div class="container">
        <HeadAbout
          title="Discover Our Office Locations"
          description="Estatein is here to serve you across multiple locations. Whether you're looking to meet our team, discuss real estate opportunities, or simply drop by for a chat, we have offices conveniently located to serve your needs. Explore the categories below to find the Estatein office nearest to you"
        />
        <div class="discover__card-wrapper">
          <div class="discover__card-item">
            <h4 class="discover__card-pretitle">Main Headquarters</h4>
            <h2 class="discover__card-title">123 Estatein Plaza, City Center, Metropolis</h2>
            <p class="discover__card-description">Our main headquarters serve as the heart of Estatein. Located in the bustling city center, this is where our core team of experts operates, driving the excellence and innovation that define us.</p>
            <div class="discover__card-icon--list">
              <IconProduct class="discover__card-icon--item" img="/Contact/mail.svg" text="info@estatein.com" :villa="false" />
              <IconProduct class="discover__card-icon--item" img="/Contact/phone.svg" text="+1 (123) 456-7890" :villa="false" />
              <IconProduct class="discover__card-icon--item" img="/Contact/metka.svg" text="Metropolis" :villa="false" />
            </div>
            <UIBtnLink link="/" title="Get Direction" :purple="true" />
          </div>
          <div class="discover__card-item">
            <h4 class="discover__card-pretitle">Regional Offices</h4>
            <h2 class="discover__card-title">456 Urban Avenue, Downtown District, Metropolis</h2>
            <p class="discover__card-description">Estatein's presence extends to multiple regions, each with its own dynamic real estate landscape. Discover our regional offices, staffed by local experts who understand the nuances of their respective markets.</p>
            <div class="discover__card-icon--list">
              <IconProduct class="discover__card-icon--item" img="/Contact/mail.svg" text="info@estatein.com" :villa="false" />
              <IconProduct class="discover__card-icon--item" img="/Contact/phone.svg" text="+1 (123) 456-7890" :villa="false" />
              <IconProduct class="discover__card-icon--item" img="/Contact/metka.svg" text="Metropolis" :villa="false" />
            </div>
            <UIBtnLink link="/" title="Get Direction" :purple="true" />
          </div>
        </div>
        <div class="discover__explore">
          <img src="/Contact/Image1.png" alt="image" class="discover__explore-image">
          <img src="/Contact/Image2.png" alt="image" class="discover__explore-image">
          <img src="/Contact/Image3.png" alt="image" class="discover__explore-image">
          <img src="/Contact/Image4.png" alt="image" class="discover__explore-image">
          <img src="/Contact/Image5.png" alt="image" class="discover__explore-image">
          <HeadAbout
              class="discover__export-head"
            title="Explore Estatein's World"
            description="Step inside the world of Estatein, where professionalism meets warmth, and expertise meets passion. Our gallery offers a glimpse into our team and workspaces, inviting you to get to know us better."
          />
          <img src="/Contact/Image6.png" alt="image" class="discover__explore-image">
        </div>
      </div>
    </section>
    <StartSection/>
  </main>
  <Footer/>
</template>

<script setup lang="ts">
import {DreamCardDataContact} from "~/components/Section/HomePage/DreamSection.data";
import CardLink from "~/components/Cards/CardLink/CardLink.vue";
import HeadAbout from "~/components/Cards/HeadAbout/HeadAbout.vue";
import {
  SelectSevenContact,
  SelectSixContact,
} from "~/data/Properties.data";
import InputField from "~/components/UI/InputField/InputField.vue";
import SelectField from "~/components/UI/SelectField/SelectField.vue";
import IconProduct from "~/components/UI/IconProduct/IconProduct.vue";
import StartSection from "~/components/Section/StartSection/StartSection.vue";

useHead({
  title: 'Estatein shop | Contact',
  meta: [
    { name: 'description', content: 'Here you can get additional information about contacting us' },
    { name: 'keywords', content: 'Estatein shop, contact, online store, products, shopping, Nuxt, TypeScript, JavaScript, Vue, Express' },
  ],
})
</script>


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

.connect {
  padding-top: 10rem;
  &__content {
  }

  &__wrapper {
    padding: 10rem;
    border: 1px solid #262626;
    border-radius: 1.2rem;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
  }
}

.feedback {
  &__item {
    padding-top: 5rem;
    width: clamp(139.7rem, 50%, 31rem);
  }

  &__message-wrapper {
  }

  &__message-title {
    @include font-W500-20px;
    padding-bottom: 1.5rem;
  }

  &__message-input {
    @include font-W500-18px;
    padding: 2.4rem 2rem;
    width: 100%;
    height: 17rem;
    background: $gray-1A1A;
  }

  &__checkbox {
  }
}
.checkbox {
  &__label {
  }
}

.connect__input, .connect__select{
  width: clamp(31rem, 50%, 43rem);
}

.discover{
  padding-top: 10rem;
}


.discover {
  &__card-wrapper {
    display: flex;
    justify-content: space-between;
  }

  &__card-item {
    border: 1px solid #262626;
    border-radius: 1.2rem;
    padding: 5rem;
    max-width: 77rem;
    max-height: 47.2rem;
  }

  &__card-pretitle {
    @include font-W500-18px;
    padding-bottom: 1rem;
  }

  &__card-title {
    @include font-w600-30px;
    padding-bottom: 1.4rem;
  }

  &__card-description {
    @include font-W500-18px;
    color: $gray;
    padding-bottom: 4rem;
  }

  &__card-icon--list {
    display: flex;
    padding-bottom: 4rem;
  }

  &__card-icon--item {

    &:not(:last-child){
      margin-right: 1rem;
    }
  }
}


.discover {
  &__explore {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    max-height: 95rem;
    background: center center no-repeat url("/Contact/bg.svg");
    padding: 8rem;
    border: 1px solid #262626;
    border-radius: 1.2rem;
  }

  &__explore-image {
    padding: 0.5rem;
  }

  &__export-head {
    max-width: 70rem;
  }
}
</style>