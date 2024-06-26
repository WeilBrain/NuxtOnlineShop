<template>
  <article class="reviews">
    <div class="reviews__wrapper">
      <span class="reviews__star" v-for="i in 5" :key="i">
        <svg class="star-svg" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 22 22" fill="none">
          <path d="M10.1586 1.30996C10.5522 0.697195 11.4478 0.697195 11.8414 1.30996L14.8804 6.04141C15.0158 6.25225 15.2255 6.40456 15.4678 6.4682L20.9068 7.89639C21.6112 8.08135 21.888 8.93313 21.4268 9.49681L17.8661 13.8492C17.7074 14.0431 17.6273 14.2896 17.6417 14.5397L17.9641 20.1539C18.0059 20.8809 17.2813 21.4074 16.6028 21.143L11.363 19.1014C11.1296 19.0105 10.8704 19.0105 10.637 19.1014L5.39725 21.143C4.71867 21.4074 3.99409 20.8809 4.03585 20.1539L4.3583 14.5397C4.37267 14.2896 4.2926 14.0431 4.13393 13.8492L0.573162 9.49681C0.112013 8.93313 0.388775 8.08135 1.09317 7.89639L6.53216 6.4682C6.77452 6.40456 6.98416 6.25225 7.11958 6.04141L10.1586 1.30996Z" :fill="getFill(i)" />
        </svg>
      </span>
      <h2 class="reviews__title">{{  title  }}</h2>
      <p class="reviews__description">{{  truncateDescription(description)  }}</p>
      <div class="reviews__user">
        <img :src=avatar alt="user avatar image" class="reviews__avatar">
        <div class="reviews__info">
          <p class="reviews__username">{{  user  }}</p>
          <p class="reviews__location">{{  location  }}</p>
        </div>
      </div>
    </div>
  </article>
</template>

<script setup lang="ts">
import {computed} from "vue";

const props = defineProps(['star', 'title', 'description', 'avatar', 'user', 'location']);
const getFill = computed(() => (index: number) => {
  return props.star >= index ? 'gold' : '#666' ;
});

const truncateDescription = (description: string): string => {
  const maxLength = 140;
  if (description.length <= maxLength) {
    return description;
  } else {
    return description.substring(0, maxLength) + '...';
  }
};
</script>

<style scoped lang="scss">
@import '/assets/scss/variables.scss';

.reviews {
  &__wrapper {
    padding: 5rem;
    border-radius: 12px;
    border: 1px solid $gray-2626;
    background: $gray-1414;
    max-width: 51.2rem;
  }

  &__star {
    padding: 1rem;
    display: inline-block;
    border-radius: 100px;
    border: 1px solid $gray-2626;
    background: $gray-1A1A;
    margin-bottom: 4rem;
    &:not(:last-child){
      margin-right: 1rem;
    }
  }

  &__title {
    @include font-W600-24px;
    margin-bottom: 1.4rem;
  }

  &__description {
    @include font-W500-18px;
    margin-bottom: 4rem;
  }

  &__user {
    display: flex;
    align-items: center;
  }

  &__avatar {
    padding-right: 1.2rem;
    border-radius: 10rem;
  }

  &__info {
  }

  &__username {
    @include font-W500-20px;
  }

  &__location {
    @include font-W500-18px;
    color: $gray;
  }
}

@media (max-width: 1024px){
  .star-svg{
    max-width: 1.8rem;
    max-height: 1.8rem;
  }
  .reviews {
    &__wrapper {
      max-height: 41.5rem;
    }

    &__star {
      padding: 0.5rem;
      width: 3rem;
      height: 3rem;
    }

    &__title {
      font-size: 2rem;
    }

    &__description {
      font-size: 1.6rem;
    }

    &__avatar {
      max-width: 6rem;
      max-height: 6rem;
    }

    &__username {
      font-size: 1.8rem;
    }

    &__location {
      font-size: 1.6rem;
    }
  }
}

@media (max-width: 768px){
  .reviews__title{
    font-size: 1.8rem;
  }
  .reviews__description{
    font-size: 1.4rem;
  }
  .reviews__username{
    font-size: 1.6rem;
  }
  .reviews__location{
    font-size: 1.4rem;
  }
  .reviews__wrapper{
    padding: 5rem;
  }
}
</style>