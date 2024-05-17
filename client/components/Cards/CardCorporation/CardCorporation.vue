<script setup lang="ts">
const props = defineProps(['year', 'nameCompany', 'link', 'domain', 'category', 'said'])
</script>

<template>
  <article class="corporation">
    <div class="container">
      <div class="corporation__wrapper">

        <div class="corporation__data">
          <div>
            <span class="corporation__since">Since  {{year}}</span>
            <h2 class="corporation__name">{{nameCompany}}</h2>
          </div>
          <UIBtnLink title="Visit Website" :link="link"/>
        </div>

        <div class="corporation__info">
          <div class="corporation__info-wrapper">
            <div class="corporation__info-icon">
              <img crossorigin="corporation__info-img" src="/CardCorporation/domain.svg" alt="domain image svg">
              <span class="corporation__info-text">Domain</span>
            </div>
            <h2 class="corporation__info-title">{{domain}}</h2>
          </div>

          <div class="corporation__info-wrapper">
            <div class="corporation__info-icon">
              <img crossorigin="corporation__info-img" src="/CardCorporation/category.svg" alt="domain image svg">
              <span class="corporation__info-text">Category</span>
            </div>
            <h2 class="corporation__info-title">{{category}}</h2>
          </div>
        </div>

        <div class="corporation__said">
          <span class="corporation__said-title">What They Said 🤗</span>
          <p class="corporation__said-text">{{said}}</p>
        </div>

      </div>
    </div>
  </article>
</template>

<style scoped lang="scss">
@import "assets/scss/variables";
.corporation {
  &__wrapper {
    display: flex;
    justify-content: space-between;
    flex-direction: column;
    flex: 1;
    max-width: 77.3rem;
    max-height: 65rem;
    padding: 5rem ;

    border-radius: 12px;
    border: 1px solid var(--Grey-15, #262626);
    background: var(--Grey-08, #141414);
    box-shadow: 0px 0px 0px 8px #191919;
  }

  &__data {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  &__since {
    @include font-W500-18px;
    color: $gray;
  }

  &__name {
    @include font-w600-30px;
  }

  &__info {
    padding-top: 4rem;
    display: flex;
    justify-content: space-between;
  }

  &__info-wrapper:last-child {
    padding-left: 3rem;
    border-left: 1px solid $gray-2626;
  }

  &__info-icon {
    display: flex;
    align-items: center;
  }

  &__info-text {
    @include font-W500-18px;
    color: $gray;
    padding-left: 0.7rem;
  }

  &__info-title {
    @include font-W500-20px;
  }

  &__said {
    margin-top: 4rem;
    border-radius: 12px;
    border: 1px solid var(--Grey-15, #262626);
    padding: 3rem;
  }

  &__said-title {
    @include font-W500-18px;
    color: gray;
  }

  &__said-text {
    @include font-W500-18px;
    padding-top: 1.4rem;
  }
}

.corporation__info-wrapper{
  padding-right: 1rem;
}

@media (max-width: 1024px) {
  .corporation {
    &__since {
      font-size: 1.6rem;
    }
    &__name {
      font-size: 2rem;
    }
    &__info-text {
      font-size: 1.4rem;
    }
    &__info-title {
      font-size: 1.6rem;
    }
    &__said-title {
      font-size: 1.6rem;
    }
    &__said-text {
      font-size: 1.3rem;
    }
  }
}

@media (max-width: 768px){
  .corporation {
    &__wrapper{
      padding: 2rem;
      height: 49rem;
    }
    &__since {
      font-size: 1.6rem;
    }
    &__name {
      font-size: 1.6rem;
    }
    &__info-text {
      font-size: 1.2rem;
    }
    &__info-title {
      font-size: 1.4rem;
    }
    &__said-title {
      font-size: 1.4rem;
    }
    &__said-text {
      font-size: 1.1rem;
    }
  }
}

@media (max-width: 690px){
  .corporation__data, .corporation__info {
    flex-wrap: wrap;
  }
  .corporation__info{
    padding-top: 0;
  }
  .corporation__said{
    padding: 1rem;
    margin: 0;
  }
  .corporation__name{
    padding-bottom: 1rem;
  }
  .corporation__info-wrapper{
    padding-top: 1rem;
    padding-left: 0 !important;
    border-left: none !important;
  }
}

@media (max-width: 480px){
  .corporation__data, .corporation__info {
    flex-wrap: wrap;
  }
  .corporation__info-wrapper:first-child{
    padding-bottom: 1.5rem;
    border-bottom: 1px solid $gray-2626;
    width: 100%;
  }
  .corporation__said{
    padding: 2rem;
  }
  .corporation__said-text{
    font-size: 1.2rem;
  }
}
</style>