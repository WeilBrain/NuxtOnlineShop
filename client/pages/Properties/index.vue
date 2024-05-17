<template>
  <NuxtLoadingIndicator />
  <div>
    <Header/>
    <section class="dream">
      <div class="dream__wrapper-bg">
        <div class="container">
          <div class="dream__wrapper">
            <div class="dream__title">Find Your Dream Property</div>
            <h4 class="dream__about">Welcome to Estatein, where your dream property awaits in every corner of our beautiful world. Explore our curated selection of properties, each offering a unique story and a chance to redefine your life. With categories to suit every dreamer, your journey </h4>
          </div>
          <div class="dream__item">
            <form class="dream__search" @submit.prevent="fetchFilteredProducts">
              <div class="dream__search-head">
                <input v-model="searchQuery" name="searchQuery" placeholder="Search For A Property" class="dream__search-input" type="text">
                <UIBtn class="dream__search-btn " :search="true" :purple="true"/>
              </div>
              <div class="dream__search-body">
                <SelectField
                    v-model="selectedLocation"
                    :image="PropertiesLocationData.image"
                    :holder="PropertiesLocationData.holder"
                    :label="PropertiesLocationData.label"
                    :labelText="PropertiesLocationData.labelText"
                    :optionsList="PropertiesLocationData.optionsList"
                />
                <SelectField
                    v-model="selectPropertyVilla"
                    :image="PropertiesPropertyTypeData.image"
                    :holder="PropertiesPropertyTypeData.holder"
                    :label="PropertiesPropertyTypeData.label"
                    :labelText="PropertiesPropertyTypeData.labelText"
                    :optionsList="PropertiesPropertyTypeData.optionsList"
                />
                <SelectField
                    v-model="selectedPricingRange"
                    :image="PropertiesPricingRangeData.image"
                    :holder="PropertiesPricingRangeData.holder"
                    :label="PropertiesPricingRangeData.label"
                    :labelText="PropertiesPricingRangeData.labelText"
                    :optionsList="PropertiesPricingRangeData.optionsList"
                />
                <SelectField
                    v-model="selectedPropertySize"
                    :image="PropertiesPropertySizeData.image"
                    :holder="PropertiesPropertySizeData.holder"
                    :label="PropertiesPropertySizeData.label"
                    :labelText="PropertiesPropertySizeData.labelText"
                    :optionsList="PropertiesPropertySizeData.optionsList"
                    name=""/>
                <SelectField
                    v-model="selectedBuildYear"
                    :image="PropertiesBuildYearData.image"
                    :holder="PropertiesBuildYearData.holder"
                    :label="PropertiesBuildYearData.label"
                    :labelText="PropertiesBuildYearData.labelText"
                    :optionsList="PropertiesBuildYearData.optionsList"
                />
              </div>
              <span>{{errors.selectedOption}}</span>
            </form>

          </div>
        </div>
      </div>
      <div class="container">
        <SwiperSection
            class="dream__swiper"
            :slider-per-group="3"
            :slider-per-view="3"
            :productData="ShortProductData"
            linkBtn="/" title="What Our Clients Say"
            description="Read the success stories and heartfelt testimonials from our valued clients. Discover why they chose Estatein for their real estate needs."
        />
        <div class="feedback">
          <HeadAbout
              title="Let's Make it Happen"
              description="Ready to take the first step toward your dream property? Fill out the form below, and our real estate wizards will work their magic to find your perfect match. Don't wait; let's embark on this exciting journey together."
          />

          <form @submit.prevent="onSubmit">
            <div class="feedback__wrapper">
              <div class="feedback__item">
                <div class="feedback__valid">
                  <InputField
                      v-model="firstName"
                      v-bind="firstNameProps"
                      :label="true"
                      label-text="First Name"
                      type="text"
                      placeholder="Enter First Name"
                  />
                  <span class="feedback__error">{{errors.firstName}}</span>
                </div>
                <div class="feedback__valid">
                  <InputField
                      v-model="lastName"
                      v-bind="lastNameProps"
                      :label="true"
                      label-text="Last Name"
                      type="text"
                      placeholder="Enter Last Name"
                  />
                  <span class="feedback__error">{{errors.lastName}}</span>
                </div>
                <div class="feedback__valid">
                  <InputField
                      v-model="email"
                      v-bind="emailProps"
                      :allow-email="true"
                      :label="true"
                      label-text="Email"
                      type="email"
                      placeholder="example@gmail.com"

                  />
                  <span class="feedback__error">{{errors.email}}</span>
                </div>
                <div class="feedback__valid">
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
              </div>
              <div class="feedback__item">
                <div class="feedback__valid">
                  <SelectFieldCustom
                      placeholder="Enter Location"
                      name="feedbackFirstSelect"
                      :options="selectOptions"
                      v-model="selectedOption"
                  >
                    <template #selectSlot>
                      <span class="select-slot">Preferred Location</span>
                    </template>
                  </SelectFieldCustom>
                  <span class="feedback__error">{{errors.fistSelect}}</span>
                </div>
                <div class="feedback__valid">
                  <SelectFieldCustom
                      placeholder="Enter type"
                      name="feedbackSecondSelect"
                      type="type"
                      :options="propertyOptions"
                      v-model="propertyOption"
                  >
                    <template #selectSlot>
                      <span class="select-slot">Property Type</span>
                    </template>
                  </SelectFieldCustom>
                </div>
                <div class="feedback__valid">
                  <SelectFieldCustom
                      placeholder="Enter Bathrooms"
                      name="feedbackThirdSelect"
                      type="type"
                      :options="bathroomsOptions"
                      v-model="bathroomsOption"
                  >
                    <template #selectSlot>
                      <span class="select-slot">No. of Bathrooms</span>
                    </template>
                  </SelectFieldCustom>
                </div>
                <div class="feedback__valid">
                  <SelectFieldCustom
                      placeholder="Enter Bedrooms"
                      name="feedbackFourthSelect"
                      type="type"
                      :options="bedroomsOptions"
                      v-model="bedroomsOption"
                  >
                    <template #selectSlot>
                      <span class="select-slot">No. of Bedrooms</span>
                    </template>
                  </SelectFieldCustom>
                </div>
              </div>

              <div class="feedback__item1">
                <div class="feedback__message-wrapper">
                  <h2 class="feedback__message-title">Message</h2>
                  <textarea v-model="feedbackArea" name="feedbackArea" class="feedback__message-input" placeholder="Enter your Message here..."></textarea>
                  <span class="feedback__error">{{errors.feedbackArea}}</span>
                </div>
              </div>

              <div class="feedback__item2">
                <div class="feedback__valid">
                  <div class="feedback__checkbox">
                    <input v-model="agree" type="checkbox" id="agree" class="custom-checkbox">
                    <label class="checkbox__label" for="agree">I agree with Terms of Use and Privacy Policy</label>
                  </div>
                  <span class="feedback__error">{{errors.agree}}</span>
                </div>
                <!--              <NuxtTurnstile v-model="token" />-->
                <!--              <input type="submit" />-->
                <UIBtn title="Send Message" :purple="true"/>
              </div>
            </div>
          </form>

          <div class="success-overlay" :class="{ 'show': successVisible }">
            <div class="success-message">Success</div>
          </div>

        </div>
      </div>
    </section>

    <StartSection/>
    <Footer/>
  </div>
</template>

<script setup lang="ts">
import SwiperSection from "~/components/Section/SwiperSection/SwiperSection.vue";
import HeadAbout from "~/components/Cards/HeadAbout/HeadAbout.vue";
import { ref } from 'vue';
import StartSection from "~/components/Section/StartSection/StartSection.vue";
import InputField from "~/components/UI/InputField/InputField.vue";
import ProductService from "~/Services/ShortProducts";
import { useForm } from 'vee-validate';
import * as yup from 'yup';
import SelectFieldCustom from "~/components/UI/SelectField/SelectFieldCustom.vue";
import FilteredProduct from "~/Services/FilteredProduct";
import {
  PropertiesBuildYearData,
  PropertiesLocationData,
  PropertiesPricingRangeData,
  PropertiesPropertySizeData,
  PropertiesPropertyTypeData
} from "~/data/Properties.data";
import SelectField from "~/components/UI/SelectField/SelectField.vue";

const ShortProductData = ref<any[]>([]);
const successVisible = ref(false)

const selectedOption = ref('');
const selectOptions = ref([
  'option 1',
  'option 2',
  'option 3',
]);

const propertyOption = ref('')
const propertyOptions = ref([
    '200',
    '250',
    '400',
    '500',
    '600',
    '700',
]);

const bathroomsOption = ref('')
const bathroomsOptions = ref([
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
])

const bedroomsOption = ref('')
const bedroomsOptions = ref([
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
])



const searchQuery = ref('')
const selectedLocation = ref('')
const selectPropertyVilla = ref('')
const selectedPricingRange = ref('')
const selectedPropertySize = ref('')
const selectedBuildYear = ref('')

const fetchFilteredProducts = async () => {
  try {
    const filters = {
      query: searchQuery.value,
      location: selectedLocation.value,
      villa: selectPropertyVilla.value,
      pricingRange: selectedPricingRange.value,
      propertySize: selectedPropertySize.value,
      buildYear: selectedBuildYear.value
    };
    ShortProductData.value = await FilteredProduct.getFilteredProducts(filters);
  } catch (error) {
    console.error('Ошибка при получении отфильтрованных данных:', error);
  }
};

const phoneRegExp = /^((\\+[1-9]{1,4}[ \\-]*)|(\\([0-9]{2,3}\\)[ \\-]*)|([0-9]{2,4})[ \\-]*)*?[0-9]{3,4}?[ \\-]*[0-9]{3,4}?$/;

const { values, errors, handleSubmit, defineField } = useForm({
  validationSchema: yup.object({
    email: yup.string().email().required(),
    firstName: yup.string().required(),
    lastName: yup.string().required(),
    feedbackFirstSelect: yup.string().oneOf(selectOptions.value, 'Select the location').required('Select the location'),
    feedbackSecondSelect: yup.string().oneOf(propertyOptions.value, 'Select the type').required('Выберите тип'),
    feedbackThirdSelect: yup.string().oneOf(bathroomsOptions.value, 'Select the bathroom').required('Select the bathroom'),
    feedbackFourthSelect: yup.string().oneOf(bedroomsOptions.value, 'Select the bed').required('Select the bed'),
    feedbackArea: yup.string().required('fill out the form'),
    phoneNumber: yup.string()
        .test('phone', 'Phone number is not valid', (value: any) => {
          const phoneNumber = value.replace(/\D/g, '');
          return phoneRegExp.test(phoneNumber) && phoneNumber.length >= 11;
        })
        .required(),
    agree: yup.string().min(1, 'Please select agree').required()
  }),
});

// Определяем поля формы
const [firstName, firstNameProps] = defineField('firstName');
const [lastName, lastNameProps] = defineField('lastName');
const [email, emailProps] = defineField('email');
const [phoneNumber, phoneNumberProps] = defineField('phoneNumber');
const [feedbackArea] = defineField('feedbackArea');
const [agree] = defineField('agree');

// Функция для отправки формы
const onSubmit = handleSubmit(async (values: any) => {
  try {
    console.log('Форма отправлена',  values)
    successVisible.value = true;
    setTimeout(() => {
      successVisible.value = false;
    }, 2000); // Скрыть сообщение через 2 секунды
  } catch (error) {
    console.error('Ошибка при отправке данных формы:', error);
  }
});

onMounted(async () => {
  try {
    ShortProductData.value = await ProductService.getProducts();
  } catch (error) {
    console.error('Ошибка при начальной загрузке данных:', error);
  }
});

useHead({
  title: 'Estatein shop | Properties',
  meta: [
    { name: 'description', content: '123' },
  ],
})
</script>



<style scoped lang="scss">
@import "assets/scss/variables";
.dream {
  &__wrapper {
    padding: 15rem 0 15rem;
  }
  &__wrapper-bg{
    border-bottom: 1px solid var(--Grey-15, #262626);
    background: linear-gradient(96deg, #262626 -26.82%, rgba(38, 38, 38, 0.00) 40.46%);
    height: 48.5rem;
  }
  &__swiper{
    padding-top: 10rem;
  }
  &__title {
    @include font-w600-48px
  }

  &__about {
    @include font-W500-18px;
    color: $gray;
    max-width: 135.8rem;
  }
}
.dream__item{
  position: relative;
  background-color:  rgb(25, 25, 25);
  padding: 1rem;
  z-index: 1;
}
.dream {
  &__search {
  }

  &__search-head {
    display: flex;
    justify-content: center;;
    position: relative;
  }

  &__search-input {
    width: 100%;
    box-sizing: border-box;
    border: 1px solid rgb(38, 38, 38);
    border-radius: 12px 12px 0px 0px;
    @include font-W600-24px;
    color: gray;
    box-shadow: 0px 0px 0px 10px rgb(25, 25, 25);
    background-color: rgb(20, 20, 20);
    padding: 3rem;
  }

  &__search-btn {
    position: absolute;
    right: 2rem;
    top: 2rem;
  }
}
.dream__search-body{
  padding-top: 2rem;
  display: flex;
  justify-content: space-between;
}

.feedback {
  &__radio {
    width: 100%;
    position: relative;
  }

  &__input {
    border: 1px solid #262626;
    border-radius: 0.8rem;
    padding: 2.2rem 2.4rem 2.2rem 5rem;

    width: 100%;
    height: 6.8rem;
    background-color: #1a1a1a;
    @include font-W500-18px;
    &__radio {
      width: 2rem;
      height: 2rem;
      position: absolute;
      right: 0;
      top: 50%;
      transform: translate(-50%, 50%);
    }
  }
}
.mobile{
  background: 2rem center no-repeat url("/phone.svg");
}
.email{
  background: 2rem center no-repeat url("/email.svg");
}

.feedback {
  &__item {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(30rem, 1fr));
    grid-column-gap: 4rem;
    grid-row-gap: 4rem;
    align-items: center;
  }
}

.radio__wrapper{
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.contact-text{
  @include font-W500-18px
}

.search__input{
  padding: 1rem;
}

@media (max-width: 1024px){
  .feedback__input{
    font-size: 1.6rem;
  }
  .feedback__radio--inputs{

  }
  .radio__wrapper{
    padding-left: 0;
  }
  .feedback__item:nth-child(3){
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
  }
}

.feedback__item:not(:last-child){
  margin-bottom: 3rem;
}

.feedback__message-title{
  @include font-W500-18px;
  padding-bottom: 1.6rem;
}

.feedback__message-input{
  width: 100%;
  height: 12.2rem;
  border: 1px solid #262626;
  border-radius: 0.6rem;
  padding: 1.6rem 2rem;
  background: $gray-1A1A;
  @include font-w600-15px
}

.feedback__item2{
  margin-top: 2rem;
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  align-items: center;
}
.checkbox__label{
  @include font-W500-18px;
}
.pc{
  display: block;
}
.mobile-btn{
  display: none;
}
@media (max-width: 768px){
  .pc{
    display: none;
  }
  .mobile-btn{
    display: block;
  }
  .dream__swiper{
    margin-top: 45rem;
  }
  .dream__search-body{
    display: grid;
    grid-template-columns: 1fr;
  }
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

.feedback__valid{
  display: flex;
  flex-direction: column;
}
.feedback__error{
  margin-top: 0.3rem;
  font-size: 1.6rem;
  color: red;
}



.success-overlay {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 999;
  opacity: 0;
  pointer-events: none;
  transition: opacity 0.3s ease-in-out;

  &.show {
    opacity: 1;
    pointer-events: auto;
  }

  .success-message {
    background-color: #4caf50;
    color: white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    display: flex;
    align-items: center;

    &::before {
      content: "\2714"; /* Галочка в виде символа Unicode */
      font-size: 24px;
      margin-right: 10px;
    }
  }
}

.select-slot{
  padding-bottom: 1.6rem;
  color: $white;
  @include font-W500-20px;
}
</style>