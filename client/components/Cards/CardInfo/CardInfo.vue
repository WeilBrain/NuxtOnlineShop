<template>
  <div class="card-info" :class=className>
    <h2 class="card-info__title">{{title}}</h2>
    <p class="card-info__description" :class="{'mb6' : props.btn}">{{description}}</p>
    <UIBtnLink class="btn" :link=props.link title="Read More" v-if="props.btn" />
  </div>
</template>

<script setup lang="ts">
import { computed } from "vue";

const props = defineProps({
  title: {
    type: String
  },
  description: {
    type: String
  },
  btn: {
    type: Boolean,
    default: true,
  },
  link: {
    type: String,
    default: null
  },
  btnNone: {
    type: Boolean,
    default: null
  }
});

const className = computed(() => ({
  'card-info__btn': props.btn,
  'card-info__noneBtn': props.btnNone,
}));
</script>


<style scoped lang="scss">
@import '/assets/scss/variables';
.card-info {
  padding: 5rem;
  border-radius: 12px;
  border: 1px solid var(--Grey-15, #262626);
  background: var(--Grey-08, #141414);
  max-width: 51.2rem;
  &__title {
    @include font-W600-24px;
    margin-bottom: 3rem;
  }

  &__description {
    @include font-W500-18px;
    color: $gray;
  }

}

.btn{
  max-width: 13.5rem;
}

.mb6{
  margin-bottom: 6rem;
}


@media (max-width: 1024px){
  .card-info {
    height: 35rem;

    &__title {
      font-size: 2rem;
    }

    &__description {
      font-size: 1.4rem;
    }
  }
  .card-info{
    max-height: 41rem;
  }
  .btn {
  }

  .card-info__noneBtn{
    padding: 3rem;
    display: flex;
    justify-content: center;
    flex-direction: column;
    max-height: 25rem;
    max-width: 30rem;
  }
}

@media (max-width: 715px){
  .card-info__noneBtn{
    max-width: 100%;
  }
}
</style>