<template>
  <header class="header">
    <div v-if="!isDiscountClosed" class="header__share pc_v">
      <div class="header__share-text">
        <p class="header__share-title">✨Discover Your Dream Property with Estatein</p>
        <nuxt-link class="header__share-link">Learn More</nuxt-link>
      </div>
      <button class="btn-close" @click="handleClose"></button>
    </div>
    <div class="container">
      <nav class="header__nav nav">
        <nuxt-link class="header__logo">
          <img src="/Header/Logo.svg" alt="logo">
        </nuxt-link>
        <ul class="nav__list" :class="{ 'active': !close }">
          <li class="nav__item nav-item" v-for="(item, index) in HeaderData" :key="index">
            <UIBtnLink
                class="nav__link"
                :title="item.text"
                :link="item.link"
                :class="{ 'active': isActiveLink(item.link) }"
            />
          </li>
        </ul>
        <UIBtnLink class="nav__item pc_v" title="Contact us" link="/" :light="true" />
        <div class="burger" @click="handleBurgerClick" :class="{ 'open': !close }">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </nav>
    </div>
  </header>
</template>

<script setup lang="ts">
import { HeaderData } from "./Header.data";
import { useRoute } from 'vue-router';
import { ref } from 'vue';
import {useDiscountStore} from "~/store/discount";


const discountStore = useDiscountStore();
const isDiscountClosed = ref(process.client ? localStorage.getItem('isDiscountClosed') === 'true' : false);

const handleClose = () => {
  discountStore.closeDiscount();
  isDiscountClosed.value = true
  if (process.client) {
    localStorage.setItem('isDiscountClosed', 'true');
  }
}

const close = ref(true);
const route = useRoute();

const isActiveLink = (link: string): boolean => {
  return route.path === link;
};

const handleBurgerClick = () => {
  close.value = !close.value;
};
</script>



<style lang="scss" scoped>
.active {
  border-radius: 10px;
  border: 1px solid #262626;
  background: #141414;
}

.pc_v {
  display: block;
}

.mob_V {
  display: none;
}

.btn-close {
  width: 3.2rem;
  height: 3.2rem;
  border-radius: 75px;
  border-color: transparent;
  cursor: pointer;
  background-color: rgba(255, 255, 255, 0.10);
  background-image: url("/close.svg");
  background-repeat: no-repeat;
  background-position: center;
  transition: background-color 0.2s ease-in-out;

  &:hover {
    background-color: rgba(87, 87, 87, 0.1);
  }
}

.header {
  position: sticky;
  z-index: 999;
  top: 0;
  left: 0;
  right: 0;

  &__share {
    background-image: url("/Header/AbstractDesign.svg");
    padding: 1.8rem 0 1.8rem;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  &__share-text {
    display: flex;
  }

  &__share-title,
  &__share-link {
    color: #fff;
    text-align: center;
    font-size: 18px;
    font-style: normal;
    font-weight: 500;
    line-height: 150%; /* 27px */
  }

  &__share-link {
    margin-left: 1rem;
    cursor: pointer;
    text-decoration-line: underline;
    transition: all 0.2s ease;

    &:hover {
      color: #8a8a8a;
    }
  }

  &__share-link:hover,
  &__share-title:hover {
    text-decoration-color: #8a8a8a; /* Change underline color on hover */
  }
}

.btn-close {
  position: absolute;
  top: 1.8rem;
  right: 3rem;
}

.header {
  background-color: #1A1A1A;

  &__nav {
    padding: 2rem 0 2rem;
    align-items: center;
    display: flex;
    justify-content: space-between;
  }
}

.nav {
  &__list {
    display: flex;
  }

  &__item:not(:last-child) {
    margin-right: 1rem;
  }
}

.burger {
  display: none;
  flex-direction: column;
  justify-content: space-between;
  width: 30px;
  height: 20px;
  cursor: pointer;

  span {
    display: block;
    width: 100%;
    height: 4px;
    background: #fff;
    border-radius: 5px;
    transition: all 0.3s;

    &:first-child {
      transform-origin: top;
    }

    &:last-child {
      transform-origin: bottom;
    }
  }

  &.open {
    span {
      &:first-child {
        transform: rotate(45deg);
      }

      &:nth-child(2) {
        opacity: 0;
      }

      &:last-child {
        transform: rotate(-45deg);
      }
    }
  }
}

@media (max-width: 768px) {
  // тут нужно что бы появлялся бургер меню
  .pc_v {
    display: none;
  }

  .mob_V {
    display: block;
  }

  .nav__list {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    width: 100%;
    background: #1a1a1a;
    padding: 1rem 0;
    border-radius: 10px;
    opacity: 0;
    visibility: hidden;
    transition: opacity 0.3s, visibility 0.3s, transform 0.3s;
    transform: translateY(-10px);

    &.active {
      display: flex;
      flex-direction: column;
      align-items: center;
      opacity: 1;
      visibility: visible;
      transform: translateY(0);
    }

    .nav__item {
      margin-bottom: 1rem;

      .nav__link {
        color: #fff;
        text-decoration: none;
        transition: all 0.3s;

        &:hover {
          color: #8a8a8a;
        }
      }
    }
  }

  .burger {
    display: flex;
  }
}



</style>
