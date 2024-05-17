<template>
  <div class="loading" v-if="!product">
    <h2>Загрузка...</h2>
  </div>
  <main v-else>
    <Header/>
    <section class="product__details">
      <div class="container">
          <div class="product__content">
            <div class="product__content__list">
              <h2 class="product__content-name">{{product.title}}</h2>
              <span class="product__content-location">{{product.location}}</span>
            </div>
              <span class="product__content-price">${{formattedPrice}}</span>
          </div>

        <div class="swiper__rectangle">
            <Swiper class="swiper__wrapper swiper__first"
                    :pagination="{ type: 'fraction', el: '.swiper-pagination'}"
                    :breakpoints="{
                  1024: {
                    slidesPerView: 7.75,
                    spaceBetween: 10
                  },
                  768:{
                    slidesPerView: 7.5,
                  },
                  680:{
                    slidesPerView: 5.8,
                  },
                  480:{
                    slidesPerView: 2.5,
                    spaceBetween: 20
                  },
                  300:{
                    slidesPerView:2.2,
                    spaceBetween: 5
                  }
                }"
            >
              <template v-for="(image, index) in images">
                <SwiperSlide class="swiper__slide-first-image" v-if="!isImageInLargeImages(image)" :key="index">
                  <img :src="image.image_url" class="swiper__image image__first-swiper" alt="Product Image" @click="changeLargeImage(image)">
                </SwiperSlide>
              </template>
            </Swiper>
            <Swiper
                class="swiper__wrapper swiper__second"
                :slides-per-view="2"
                :breakpoints="{
                  680:{
                    slidesPerView: 2,
                  },
                  480:{
                    slidesPerView: 2,
                  },
                  300:{
                    slidesPerView:1,
                    spaceBetween: 5
                  }
                }"
            >
              <SwiperSlide class="test" v-for="(image, index) in largeImages" :key="index">
                <img :src="image.image_url" class="swiper__image image__second-swiper" alt="Product Image">
              </SwiperSlide>
            </Swiper>
          <div class="swiper-button__List">
            <button class="swiper-button__item" @click="prevSlide"></button>
            <button class="swiper-button__item" @click="nextSlide"></button>
          </div>
        </div>

        <div class="product-details-info">
          <div class="product-details-info__wrapper">

            <div class="product-details-info__left">
              <h2 class="product-details-info__heading">Description</h2>
              <p class="product-details-info__description">Discover your own piece of paradise with the Seaside Serenity Villa. With an open floor plan, breathtaking ocean views from every room, and direct access to a pristine sandy beach, this property is the epitome of coastal living.</p>
              <div class="product-details-info__line"></div>
              <div class="product-details-info__card-wrapper">
                <ul class="product-details-info__list">
                  <li class="product-details-info__item">
                    <div class="product-details-info__rectangle">
                      <img class="product-details-info__icon" src="/Product/bedroom.svg" alt="bedroom image">
                      <span class="product-details-info__title">Bedrooms</span>
                    </div>
                    <span class="product-details-info__count">{{ product.bedroom }}</span>
                  </li>
                  <li class="product-details-info__item">
                    <div class="product-details-info__rectangle">
                      <img class="product-details-info__icon" src="/Product/bathroom.svg" alt="bathroom image">
                      <span class="product-details-info__title">Bathrooms</span>
                    </div>
                    <span class="product-details-info__count">{{ product.bathroom }}</span>
                  </li>
                  <li class="product-details-info__item">
                    <div class="product-details-info__rectangle">
                      <img class="product-details-info__icon" src="/Product/villa.svg" alt="villa image">
                      <span class="product-details-info__title">Area</span>
                    </div>
                    <span class="product-details-info__count">2,500 Square Feet</span>
                  </li>
                </ul>
              </div>
            </div>

            <div class="product-details-info__right">
              <h2 class="feature__title">Key Features and Amenities</h2>
              <KeyFeature class="feature__card" v-for="(feature, index) in FeatureData" :key="index" :text="feature.text"  />
            </div>
          </div>
        </div>

        <div class="inquire">
          <div class="inquire__wrapper">
            <div class="inquire__left">
              <HeadAbout
                  title="Inquire About Seaside Serenity Villa"
                  description="Interested in this property? Fill out the form below, and our real estate experts will get back to you with more details, including scheduling a viewing and answering any questions you may have."
              />
            </div>
            <div class="inquire__right">
              <form @submit.prevent="onSubmit" class="inputs__right-content">
                <div class="wrapper__valid">
                  <InputField
                      v-model="firstName"
                      v-bind="firstNameProps"
                      class="inputFiled"
                      :label="true"
                      label-text="First Name"
                      type="text"
                      placeholder="Enter First Name"
                  />
                  <span class="feedback__error">{{errors.firstName}}</span>
                </div>
                <div class="wrapper__valid">
                  <InputField
                      v-model="lastName"
                      v-bind="lastNameProps"
                      class="inputFiled"
                      :label="true"
                      label-text="Last Name"
                      type="text"
                      placeholder="Last Name"
                  />
                  <span class="feedback__error">{{errors.lastName}}</span>
                </div>
                <div class="wrapper__valid">
                  <InputField
                      v-model="email"
                      v-bind="emailProps"
                      class="inputFiled"
                      :label="true"
                      label-text="Email"
                      type="email"
                      placeholder="Enter your email"
                  />
                  <span class="feedback__error">{{errors.email}}</span>
                </div>
                <div class="wrapper__valid">
                  <InputField
                      v-model="phoneNumber"
                      v-bind="phoneNumberProps"
                      :label="true"
                      label-text="Phone"
                      type="tel"
                      placeholder="+7 (999) 999-99-99"
                      :phone="true"
                  />
                  <span class="feedback__error">{{errors.phoneNumber}}</span>
                </div>
                <div class="inputs__right-select">
                  <SelectFieldTest
                      placeholder="Enter Location"
                      name="firstSelect"
                      type="birthMonth"
                      :options="selectOptions"
                      v-model="selectedOption"
                  >
                    <template #selectSlot>
                      <span class="select-slot">Selected Property</span>
                    </template>
                  </SelectFieldTest>
                </div>
                <div class="inputs__right-message">
                  <label for="message" class="inputs__right-message-text">Message</label>
                  <textarea name="feedbackArea" class="inputs__right-message-area" id="message" placeholder="Enter your Message here.."></textarea>
                  <span class="feedback__error">{{errors.feedbackArea}}</span>
                </div>
                <div class="inputs__right-agree">
                  <div class="feedback__checkbox">
                    <input name="agree" type="checkbox" id="agree" class="custom-checkbox">
                    <label class="checkbox__label" for="agree">I agree with Terms of Use and Privacy Policy</label>
                    <h4 class="feedback__error">{{errors.agree}}</h4>
                  </div>
                  <UIBtn :purple="true" title="Send Message"/>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <SwiperSection :slider-per-group="3" :slider-per-view="3" :productData="CardInfoDataHome" linkBtn="/" title="Frequently Asked Questions" description="Find answers to common questions about Estatein's services, property listings, and the real estate process. We're here to provide clarity and assist you every step of the way."/>
    </section>
    <StartSection/>
  </main>
  <Footer/>
</template>

<script setup lang="ts">
import { onMounted, ref } from 'vue';
import { useRoute } from 'vue-router';
import { fetchProductById } from '~/Services/MoreProducts';
import KeyFeature from "~/components/UI/KeyFeature/KeyFeature.vue";
import {FeatureData} from "~/data/Feature.data";
import {CardInfoDataHome} from "~/data/CardInfo.data";
import SwiperSection from "~/components/Section/SwiperSection/SwiperSection.vue";
import StartSection from "~/components/Section/StartSection/StartSection.vue";
import HeadAbout from "~/components/Cards/HeadAbout/HeadAbout.vue";
import InputField from "~/components/UI/InputField/InputField.vue";
import SelectFieldTest from "~/components/UI/SelectField/SelectFieldCustom.vue";
import { useForm } from "vee-validate";
import * as yup from "yup";


const route = useRoute();
const productId = ref(route.params.id);

let product = ref<any>(null);
const images = ref([]);
const largeImages = ref([]);
let currentIndex = 0;
const formattedPrice = ref()
const message = ref('');
const successVisible = ref(false)


const title = ref('');
const description = ref('');

const fetchProductDetails = async () => {
  try {
    const response = await fetchProductById(productId.value);
    console.log(response)
    if (response) {
      product.value = response.product;
      images.value = response.images;
      largeImages.value = response.images.slice(0, 2); // Берем первые две картинки
      formattedPrice.value = formatPrice(response.product.price);
      title.value = 'Estatein shop | ' + response.product.title;
      description.value = 'Product details: ' + response.product.description;
    }
  } catch (error) {
    console.error('Ошибка при отправке запроса:', error);
  }
};

onMounted(() => {
  fetchProductDetails();
});

const formatPrice = (price: number) => {
  return price.toLocaleString(); // Преобразует число в строку с запятыми в качестве разделителей тысяч и добавляет символ доллара в начало
};

const prevSlide = () => {
  currentIndex = (currentIndex - 1 + largeImages.value.length) % largeImages.value.length;
  updateLargeImages();
};

// Функция для переключения на следующий слайд
const nextSlide = () => {
  currentIndex = (currentIndex + 1) % images.value.length;
  updateLargeImages();
};

// Функция для изменения большой картинки при клике на маленькую
const changeLargeImage = (image: any) => {
  currentIndex = images.value.findIndex((img) => img.id === image.id);
  updateLargeImages();
};

// Обновление списка больших изображений в соответствии с текущим индексом
const updateLargeImages = () => {
  largeImages.value = [
    images.value[currentIndex],
    images.value[(currentIndex + 1) % images.value.length] // Вторая картинка должна быть следующей по порядку
  ];
};

// Проверка, есть ли изображение в списке больших изображений
const isImageInLargeImages = (image) => {
  return largeImages.value.some((largeImage) => largeImage.id === image.id);
};

const selectedOption = ref('');
const selectOptions = ref([
  'option 1',
  'option 2',
  'option 3',
]);

const phoneRegExp = /^((\\+[1-9]{1,4}[ \\-]*)|(\\([0-9]{2,3}\\)[ \\-]*)|([0-9]{2,4})[ \\-]*)*?[0-9]{3,4}?[ \\-]*[0-9]{3,4}?$/;
const { values, errors, handleSubmit, defineField } = useForm({
  validationSchema: yup.object({
    firstName: yup.string().required(),
    lastName: yup.string().required(),
    email: yup.string().email().required(),
    firstSelect: yup.string().oneOf(selectOptions.value, 'Select the location').required('Select the location'),
    feedbackArea: yup.string().required('fill out the form'),
    phoneNumber: yup.string()
        .test('phone', 'Phone number is not valid', (value: any) => {
          const phoneNumber = value.replace(/\D/g, '');
          return phoneRegExp.test(phoneNumber) && phoneNumber.length >= 11;
        })
        .required(),
    agree: yup.string().min(1, 'Please select agree').required()
  }),
})

const [firstName, firstNameProps] = defineField('firstName');
const [lastName, lastNameProps] = defineField('lastName');
const [email, emailProps] = defineField('email');
const [phoneNumber, phoneNumberProps] = defineField('phoneNumber');
const [agree] = defineField('agree');

// Функция для отправки формы
console.log(title)

const onSubmit = handleSubmit(async (values: any) => {
  try {
    console.log('Форма отправлена',  values)
    successVisible.value = true;
    setTimeout(() => {
      successVisible.value = false;
    }, 2000);
  } catch (error) {
    console.error('Ошибка при отправке данных формы:', error);
  }
});


useHead({
  title: title,
  meta: [
    { name: 'description', content: description.value },
  ],
})
</script>

<style lang="scss" scoped>
@import '/assets/scss/variables';

.select-slot{
  padding-bottom: 1.6rem;
  color: $white;
  @include font-W500-20px;
}

.product__details{
  padding-top: 13rem;
}
.swiper__first{
  padding: 2rem;
  background: $gray-1414;
  border: 1px solid $gray-2626;
  border-radius: 1.2rem;
  margin-bottom: 3rem;
}
.swiper__rectangle{
  margin-top: 3rem;
  padding: 5rem 5rem 2rem 5rem;
  background-color: $gray-1A1A;
}
.image__first-swiper{
  cursor: pointer;
  width: 100%;
  height: 100%;
}
.image__second-swiper{
  width: 100%;
  height: 100%;
}
.swiper__wrapper {
  transition: transform 0.3s ease-in-out;
}

.swiper__image-container {
  width: 100%;
  height: 10rem; /* Установите желаемую высоту */
  display: flex;
  justify-content: center;
  align-items: center;
}
.swiper-button {
  &__List {
    padding-top: 3rem;
    display: flex;
    justify-content: center;
  }

  &__item {
    cursor: pointer;
    border: 1px solid $gray-2626;
    border-radius: 6.9rem;
    padding: 1.4rem;
    width: 5.8rem;
    height: 5.8rem;
    background: $gray-1A1A;
    position: relative;
    transition: 0.2s ease-in-out;
    &:hover{
      background: #151515;
    }
    &:not(:last-child){
      margin-right: 2rem;
    }
    &::before {
      content: '';
      background: url("/arrow.svg") center center no-repeat;
      width: 2rem;
      height: 2rem;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }
  }
  &__item:first-child::before {
    transform: rotate(-180deg) translate(50%, 50%);
  }
}
.test{
  margin-right: 2rem;
}

.product {
  &__content {
    display: flex;
    justify-content: space-between;
    align-items: center;
    &__list {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
  }

  &__content-name {
    @include font-W600-26px;
    color: $white;
  }

  &__content-location {
    margin-left: 2rem;
    color: $white;
    @include font-W500-18px;
    border: 1px solid $gray-2626;
    border-radius: 0.8rem;
    padding: 1rem 1rem 1rem 4rem;
    background: url("/location.svg") 15% center no-repeat;
  }

  &__content-price {
    @include font-W600-24px;
    border: 1px solid $gray-2626;
    border-radius: 0.8rem;
    padding: 1rem;
  }
}

.product-details-info {
  margin-top: 3rem;
  &__list {
    display: flex;
    align-items: center;
    justify-content: space-between;
  }

  &__item {
    &:not(:last-child){
      border-right: 1px solid $gray-2626;
      padding-right: 9rem;
    }
  }

  &__heading{
    @include font-W600-24px;
  }

  &__description{
    @include font-W500-18px;
    color: $gray;
    padding-top: 1.4rem;
    padding-bottom: 3rem;
  }

  &__rectangle {
    display: flex;
    align-items: center;
  }

  &__icon {
    width: 2.3rem;
    height: 2.3rem;
    padding-right: 1rem;
  }

  &__title {
    @include font-W500-18px;
    color: $gray;
  }

  &__count {
    @include font-W600-24px;
    color: $white;
  }
  &__line{
    border-top: 1px solid $gray-2626;
    padding: 1rem 0 1rem ;
    margin: 0 auto;
    max-width: 78.3rem;
  }
}

.product-details-info__wrapper{
  display: flex;
  justify-content: space-between;
}

.product-details-info__left{
  max-width: 73.5rem;
  border: 1px solid $gray-2626;
  border-radius: 1.5rem;
  padding: 5rem;
  max-height: 33rem;
}

.product-details-info {
  &__right {
    border: 1px solid #262626;
    border-radius: 1.2rem;
    padding: 5rem;
    max-width: 78.3rem;
  }
}

.feature {
  &__title {
    @include font-W600-24px;
    padding-bottom: 5rem;
  }

  &__card {
    &:not(:last-child){
      padding-bottom: 3rem;
    }
  }
}

.inquire {
  &__wrapper {
    display: flex;
    justify-content: space-between;
  }

  &__left {
    display: flex;
  }

  &__right {
    border: 1px solid #262626;
    border-radius: 1.2rem;
    padding: 5rem;
  }
}

.inputs {
  &__right-content {
    display: flex;
    justify-content: space-between;
    max-width: 98.4rem;
    max-height: 100%;
    flex-wrap: wrap;
  }

  &__right-message {
    display: flex;
    flex-direction: column;
  }

  &__right-message-text {
    @include font-W500-20px;
    padding-bottom: 1.6rem;
  }
  &__right-message-area{
    padding: 2.4rem 2rem;
    max-width: 100%;
    background: $gray-1A1A;
    border: 1px solid $gray-2626;
    border-radius: 0.8rem;
    @include font-W500-18px;
    height: 17rem;
  }
  &__right-agree {
    display: flex;
    justify-content: space-between;
    width: 100%;
    align-items: center;
    padding-top: 5rem;
    &-checkbox{
      border: 1px solid $gray-2626;
      border-radius: 0.4rem;
      width: 2.8rem;
      background: #1a1a1a;
      height: 2.8rem;
    }
    &-text{
      @include font-W500-18px;
      padding-left: 1rem;
    }
  }
}
.inputs__right-select{
  display: flex;
  flex-direction: column;
  width: 100%;
  padding: 0 0 2rem;
}
.inputFiled{
  width: 100%;
}
.product-details-info__wrapper{
  padding-bottom: 10rem;
}

.custom-checkbox {
  position: absolute;
  z-index: -1;
  opacity: 0;
}
.custom-checkbox+label {
  display: inline-flex;
  align-items: center;
  user-select: none;
}
.custom-checkbox+label::before {
  content: '';
  display: inline-block;
  width: 1em;
  height: 1em;
  flex-shrink: 0;
  flex-grow: 0;
  border: 1px solid $gray-2626;
  border-radius: 0.25em;
  margin-right: 0.5em;
  background-repeat: no-repeat;
  background-position: center center;
  background-size: 50% 50%;
}
.custom-checkbox:checked+label::before {
  border-color: #0b76ef;
  background-color: #0b76ef;
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3e%3cpath fill='%23fff' d='M6.564.75l-3.59 3.612-1.538-1.55L0 4.26 2.974 7.25 8 2.193z'/%3e%3c/svg%3e");
}
/* стили при наведении курсора на checkbox */
.custom-checkbox:not(:disabled):not(:checked)+label:hover::before {
  border-color: #b3d7ff;
}
/* стили для активного состояния чекбокса (при нажатии на него) */
.custom-checkbox:not(:disabled):active+label::before {
  background-color: #b3d7ff;
  border-color: #b3d7ff;
}
/* стили для чекбокса, находящегося в фокусе */
.custom-checkbox:focus+label::before {
  box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}
/* стили для чекбокса, находящегося в фокусе и не находящегося в состоянии checked */
.custom-checkbox:focus:not(:checked)+label::before {
  border-color: #80bdff;
}
/* стили для чекбокса, находящегося в состоянии disabled */
.custom-checkbox:disabled+label::before {
  background-color: #e9ecef;
}

.wrapper__valid{
  width: 100%;
  display: flex;
  flex-direction: column;
}
.feedback__error{
  padding: 0.5rem 0;
  font-size: 1.6rem;
  color: red;
}
.checkbox__label{
  @include font-W500-20px;
}
@media (max-width: 1024px){
  .image__first-swiper{
    max-width: 8rem;
  }
  .image__second-swiper{
    max-width: 40rem;
    max-height: 40rem;
  }
  .product-details-info__left{
    max-width: 50%;
  }
  .product-details-info__item{
    padding-right: 2% !important;
    width: 100%;
  }
  .product-details-info__title{
    font-size: 1.6rem;
  }
  .product-details-info__count{
    font-size: 1.4rem;
  }
  .product-details-info__description{
    font-size: 1.4rem;
  }
  .product-details-info__left{
    padding: 3rem;
    max-height: 30rem;
  }
  .product-details-info__right{
    max-width: 45rem;
    padding: 3rem;
  }
  .feature__text{
    font-size: 1.3rem;
  }

  .inquire__wrapper{
    flex-direction: column;
  }
}
.inputs__right-message{
  width: 100%;
}
@media (max-width: 480px){
  .image__second-swiper{
    max-width: 31.5rem;
    max-height: 30rem;
    border-radius: 10px;
  }
  .image__first-swiper{
    max-width: 10rem;
  }
  .product-details-info__wrapper{
    flex-direction: column;
  }
  .product-details-info__left{
    max-width: 100%;
    margin-bottom: 3rem;
  }
  .inputs__right-message-area{
    width:  100%;
  }
  .inputs__right-agree{
    flex-direction: column;
  }
  .feedback__checkbox{
    margin-bottom: 2rem;
  }
}
</style>
