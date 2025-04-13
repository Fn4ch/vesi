export default defineNuxtConfig({
  devtools: { enabled: false },

  alias: {
    "~": "/<srcDir>",
    "@": "/<srcDir>",
    "~~": "/<rootDir>",
    "@@": "/<rootDir>",
    "#shared": "/<rootDir>/shared",
    "assets": "/<srcDir>/assets",
    "public": "/<srcDir>/public",
    "#build": "/<rootDir>/.nuxt",
    "#internal/nuxt/paths": "/<rootDir>/.nuxt/paths.mjs"
  },

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

  css: ["~/src/assets/scss/global.scss"],

  vite: {
    css: {
      preprocessorOptions: {
        scss: {
          additionalData: '@use "~/src/assets/scss/_vars.scss" as *;',
        },
      },
    },
  },

  image: {
    inject: true,
  },

  modules: ["@nuxtjs/google-fonts", '@nuxt/image', "@nuxt/eslint"],
  compatibilityDate: '2024-10-30'
})