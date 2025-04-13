<template>
    <div class="product-card">
        <NuxtImg :src="`/images/${image}.png`" fit="cover" width="320" height="240" alt="product image" />
        <div class="product-card__title">{{ title }}</div>
        <div class="product-card__description">{{ description }}</div>
        <button>Запросить цену</button>
    </div>
</template>

<script setup lang="ts">
withDefaults(defineProps<{
    title: string,
    image: string,
    description?: string // Необязательный prop
}>(), {
    title: 'Title',
    image: '/images/pallete.png', // Убедитесь, что файл существует в public/images/
    description: '' // Значение по умолчанию для необязательного prop
})
</script>

<style lang="scss" scoped>
.product-card{
    margin: 1rem;
    display: flex;
    flex-direction: column;
    width: min-content;
    padding: 1.5rem;
    width: 23rem;
    @extend %boxShadow;
    border-radius: 0.1rem;
    @media (min-width: 1921px) {
        border-radius: 0.8vw;
        padding: 1vw;
        margin-top: 2.4vw;
    }
    @media (max-width: 1024px) {
        padding: 1rem;
        margin-top: 1rem;
    }
    &__title{
        padding: 1rem 0;
        font-size: 1.5rem;
        font-weight: 500;
        @media (min-width: 1921px) {
            padding: 0.8vw 0;
            font-size: 1.2vw;
        }
    }
    &__description{
        font-size: 1rem;
        color: $colorGreyDark;
        word-wrap: normal;
        padding-bottom: 1.5rem;
        @media (min-width: 1921px) {
            font-size: .8vw;
        }
    }

    button{
        font-size: 1rem;
        margin-top: auto;
        cursor: pointer;
    }
}    
</style>