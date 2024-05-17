<template>
  <footer class="footer">
    <div class="container">
      <div class="footer__wrapper">
        <div class="footer__content">
          <img class="footer__logo" src="/Header/Logo.svg" alt="logo image">
          <form class="footer__form" @submit.prevent="submitForm">
            <input class="footer__input" placeholder="Enter Your Email" type="text" id="email" v-model="email" />
            <button class="footer__button" type="submit">
              <img class="footer__send-icon" src="/Footer/send.svg" alt="send email image">
            </button>
          </form>
        </div>
        <div v-for="item in FooterData" :key="item.linkName" class="footer__content">
          <h2 class="footer__title">{{item.title}}</h2>
          <nav class="footer__nav">
            <ul class="footer__list">
              <li v-for="(link, index) in item.link" :key="index" class="footer__item">
                <NuxtLink class="footer__link" :to=item.link[index] >{{ item.linkName[index] }}</NuxtLink>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
    <div class="footer__social">
      <div class="container">
        <div class="footer__social-info">
          <div class="footer__social-text">
            <p class="footer__social-title">@2023 Estatein. All Rights Reserved.</p>
            <p class="footer__social-description">Terms & Conditions</p>
          </div>
          <div class="footer__social-wrapper">
            <span class="footer__social-rectangle" v-for="(item, index) in SocialData" :key="index">
              <a class="footer__social-link" :href=item.link>
                <img class="footer__social-image" :src=item.image alt="image">
              </a>
            </span>
          </div>
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup lang="ts">
import { ref, provide } from 'vue';
import {FooterData, SocialData} from "~/components/Footer/Footer.data";

const email = ref('');
const submitForm = async () => {
  console.log('Отправка формы с email:', email.value);
};

provide('submitForm', submitForm);
</script>


<style scoped lang="scss">
@import "assets/scss/variables";
.footer {
  &__wrapper {
    display: flex;
    justify-content: space-between;
    padding: 10rem 0 10rem;
  }

  &__content {
  }

  &__logo {
  }

  &__form {
    margin-top: 3rem;
    position: relative;
  }

  &__input {
    width: 423px;
    padding: 18px 24px 1.8rem 5.8rem;
    align-items: center;
    border-radius: 12px;
    border: 1px solid $gray-2626;
    background: $gray-1414;
    @include font-W500-18px;
    color: $gray;
    background: 2.4rem center no-repeat url("/Footer/email.svg");
  }

  &__button {
    cursor: pointer;
    position: absolute;
    left: 85%;
    transform: translateX(-50%);
    right: 0;
    top: 50%;
    max-width: 2.4rem;
    transform: translateY(-50%);

    background: transparent;
    border: none;
    padding: 0;
  }

  &__send-icon {
  }

  &__title {
    @include font-W500-20px;
    color: $gray;
    padding-bottom: 3rem;
  }

  &__nav {
  }

  &__list {
  }

  &__item {
    &:not(:last-child){
      padding-bottom: 2rem;
    }
  }

  &__link {
    text-decoration: none;
    @include font-W500-18px;
    transition: color .3s ease-in-out;
    &:hover{
      color: gray;
    }
  }
}

.container {
}

.footer__send-icon {
  transition: filter 0.3s ease-in-out;
}

.footer__send-icon:hover {
  filter: grayscale(100%) invert(40%);
}


.footer {
  &__social {
    background-color: $gray-1A1A;
  }

  &__social-info {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 4rem 0 4rem;
  }

  &__social-text{
    display: flex;
  }

  &__social-title {
    @include font-W500-18px;
  }

  &__social-description {
    @include font-W500-18px;
  }

  &__social-wrapper {
    display: flex;
  }

  &__social-rectangle {
    padding: 1.8rem;
    border-radius: 58px;
    background: $gray-1414;
    display: flex;
    align-items: center;
    justify-content: center;
    &:not(:last-child){
      margin-right: 1rem;
    }
  }

  &__social-link {

  }

  &__social-image{
    width: 2.4rem;
    height: 2.4rem;
    transition: .2s ease-in-out;
    &:hover{
      filter: grayscale(100%) invert(40%);
    }
  }
}

@media (max-width: 1024px) {
  .footer__title{
    font-size: 1.8rem;
  }
  .footer__link{
    font-size: 1.6rem;
  }
  .footer__input {
    max-width: 25rem;
    padding: 18px 24px 1.8rem 5.8rem;
    align-items: center;
    border-radius: 12px;
    border: 1px solid $gray-2626;
    background: $gray-1414;
    @include font-W500-18px;
    color: $gray;
    background: 2.4rem center no-repeat url("/Footer/email.svg");
  }
  .footer__button {
    left: 82%;
  }
}

@media (max-width: 768px) {
  .footer__wrapper{
    display: grid;
    grid-template-columns: 1fr 1fr;
    align-items: center;
    justify-items: center;
    grid-row-gap: 2rem;
  }

  .footer__content{
    width: 25rem;
  }

  .footer__title{
    padding-bottom: 1rem;
    padding-top: 2rem;
  }
  .footer__social-info{
    flex-direction: column-reverse;
  }
  .footer__social-text{
    margin-top: 2rem;
  }
}

@media (max-width: 480px){
  .footer__input{
    max-width: 25rem;
  }
  .footer__button{
    left: 99%;
  }
  .footer__content{
    width: 20rem;
  }
  .footer__wrapper{
   grid-template-columns: 1fr;
  }
}
</style>