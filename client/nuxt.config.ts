// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  plugins: [
    '@/plugins/maska',
  ],
  devtools: { enabled: false },
  ssr: false,
  modules: [
    'nuxt-swiper',
    '@nuxtjs/turnstile',
    '@pinia/nuxt',
    '@vee-validate/nuxt',
    ['@nuxtjs/google-fonts', {
    families: {
      Urbanist: {
        wght: [300, 400, 500, 600, 700],
        ital: [300],
      },
    }
  },
  ],
    "@nuxtjs/seo"
  ],
  // turnstile: {
  //   siteKey: '0x4AAAAAAAWQM2BugAPJXQ0-',
  // },
  //
  // runtimeConfig: {
  //   turnstile: {
  //     secretKey: '0x4AAAAAAAWQM7bs8GLXND3jUuHP-b32dg4',
  //   },
  // },
  veeValidate: {
    // Отключить или включить автоматический импорт компонентов
    autoImports: true,
    // Использовать другие имена для компонентов
    componentNames: {
      Form: 'VeeForm',
      Field: 'VeeField',
      FieldArray: 'VeeFieldArray',
      ErrorMessage: 'VeeErrorMessage',
    },
  },
})