<script setup lang="ts">
import BtnLink from "~/components/UI/BtnLink/BtnLink.vue";

const props = defineProps(['title', 'description', 'link', "btnBottom", 'TextSmall', 'imgDefault'])

</script>

<template>
  <div class="LearnMore" :style="{ background: imgDefault ? 'url(/CardTrustLearnMore/bg2.svg)' : 'url(/CardTrustLearnMore/bg.svg)'}">
    <div class="LearnMore-wrapper">
      <h2 class="LearnMore-title" :style="{fontSize: TextSmall ? '2.4rem' : '3rem'}" >{{title}}</h2>
      <BtnLink v-if="!btnBottom" title='Learn More' :link="link" />
    </div>
    <p class="LearnMore-description">{{description}}</p>
    <BtnLink :maxWidth="btnBottom" v-if="btnBottom" title="Learn More" :link="link" />
  </div>
</template>

<style scoped lang="scss">
@import "assets/scss/variables";
.LearnMore {
  border: 1px solid #262626;
  border-radius: 1.2rem;
  padding: 5rem 5rem 3rem 5rem;
  max-width: 103rem;
  max-height: 100%;
  background: center center no-repeat url("/CardTrustLearnMore/bg.svg");
  background-size: cover;
}

.LearnMore-wrapper {
  display: flex;
  justify-content: space-between;
  padding-bottom: 3rem;
}

.LearnMore-title {
  @include font-w600-30px;
}

.LearnMore-description {
  @include font-W500-18px;
}

@media (max-width: 480px){
  .LearnMore-wrapper {
    flex-direction: column;
  }
  .LearnMore-title{
    padding-bottom: 1.5rem;
  }
}
</style>