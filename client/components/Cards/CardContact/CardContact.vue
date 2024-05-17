<template>
  <article class="card-contact">
    <div class="card-contact__logo">
      <img class="card__contact-logo--image" :src=img alt="logo image contact">
      <NuxtLink class="card-contact__twitter" :to=link>
        <img src="/CardContact/twiiter.svg" alt="twitter logo contact">
      </NuxtLink>
    </div>
    <h2 class="card-contact__name">{{name}}</h2>
    <p class="card-contact__worker">{{worker}}</p>
    <div class="card-contact__send">
      <span class="card-contact__say--text">Say Hello 👋</span>
      <NuxtLink :to=link class="card-contact__say-btn">
        <img src="/CardContact/send.svg" alt="send image contact">
      </NuxtLink>
    </div>
  </article>
</template>

<script setup lang="ts">
const props = defineProps(['img', 'name', 'worker', 'link'])
</script>

<style scoped lang="scss">
@import "assets/scss/variables";

.card-contact {
  position: relative;
  padding: 3rem;
  border-radius: 12px;
  border: 1px solid $gray-2626;
  background: $gray-1818;
  max-width: 37.6rem;

  &__logo {
    padding-bottom: 5rem;
  }

  &__name {
    @include font-W600-24px;
    color: $white;
    text-align: center;
    padding-bottom: 0.6rem;
  }

  &__twitter {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%);
    display: inline-flex;
    align-items: center;
    padding: 1.4rem 2.6rem;
    border-radius: 43px;
    background: $purple;

    transition: 0.4s ease-in-out;
    &:hover {
      background-color: #3c208c;
    }
  }

  &__worker {
    @include font-W600-24px;
    color: $gray;
    text-align: center;
    padding-bottom: 2.4rem;
  }

  &__send {
    border-radius: 100px;
    border: 1px solid var(--Grey-15, #262626);
    background: var(--Grey-10, #1A1A1A);
    padding: 1.4rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  &__say--text {
    @include font-W500-18px;
  }

  &__say-btn {
    padding: 1rem;
    display: inline-flex;
    align-items: center;
    border-radius: 100px;
    background: $purple;
    transition: 0.4s ease-in-out;

    &:hover {
      transform: scale(1.10);
    }
  }
}

@media (max-width: 1024px){
  .card-contact {
    &__twitter {
      top: 51.5%;
      left: 50%;
    }

    &__name {
      font-size: 2rem;
    }

    &__worker {
      font-size: 1.6rem;
    }

    &__say--text {
      font-size: 1.6rem;
    }
  }

  .card__contact-logo--image{
    max-width: 29.7rem;
    max-height: 25rem;
  }
}

@media (max-width: 768px){
  .card-contact{
    padding: 2rem;
  }
}
</style>
