export default defineNuxtConfig({
  devtools: { enabled: false },

  app: {
    head: {
      charset: 'utf-8',
      viewport: 'width=device-width, initial-scale=1',
    }
  },

  googleFonts: {
    families: {
      Outfit: true
    }
  },
  css: ["@/src/assets/scss/global.scss"],

  vite: {
    css: {
      preprocessorOptions: {
        scss: {
          additionalData: '@use "@/src/assets/scss/_vars.scss" as *;',
        },
      },
    },
  },

  image: {
    inject: true,
  },

  modules: ["@nuxtjs/google-fonts", '@nuxt/image', "@nuxt/eslint"]
})