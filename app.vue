<template>
  <div>
      <Head>
          <meta name="keywords" content="весы Казань, продажа весов, установка весов, промышленные весы, торговые весы, лабораторные весы, весы оборудование, весы для машин">
          <meta name="robots" content="index, follow">
          <meta name="description" content="ВесыОбр предлагает качественные весы для продажи и установки в Казани и соседних регионах. Широкий выбор промышленных, торговых и лабораторных весов. Гарантия качества и профессиональное обслуживание.">
          <link rel="canonical" href="https://vesiobr.ru">
          <meta name="language" content="Russian">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Весы Казань</title>
          <meta property="og:title" content="Продажа и установка весов в Казани и близлежащих территориях | ВесыОбр">
          <meta property="og:description" content="ВесыОбр предлагает качественные весы для продажи и установки в Казани и соседних регионах. Широкий выбор промышленных, торговых и лабораторных весов. Гарантия качества и профессиональное обслуживание.">
          <meta property="og:image" content="https://www.vesiobr.ru/preview-image.jpg">
          <meta property="og:url" content="https://www.vesiobr.ru/">
      </Head>
      <AppHeader />
      <ProductInfo />
      <ProductList />
  </div>
</template>
  
<script setup lang="ts">

</script>

<style lang="scss">
@use "@/assets/styles/_vars.scss" as vars;
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'General Sans';
    background-color: #EAEBF0;
}

html{
    margin: 0;
    padding: 0;
}

body {
    line-height: 1.4;
    font-size: 1rem;

    background-color: $colorWhite;
}

button {
    font-size: 1rem;
    border-radius: 0.5rem;
    background-color: $colorOrange;
    color: #ffffff;
    border: none;
    transition: all 0.2s ease-in-out;
    padding: 1rem 1.5rem;
    text-align: center;

    &:active {
        scale: 1.02;
    }

    &:focus {
        border: none;
        outline: none;
    }
}

h1{
    font-size: 4rem;
    color: white;
    background-color: transparent;
}

</style>
  