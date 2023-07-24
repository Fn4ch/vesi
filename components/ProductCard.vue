<template>
    <div class="product-card">
        <img :src="image ?? 'https://via.placeholder.com/600/5e3a73'" alt="product image">
        <div class="product-card__title">{{ title ?? 'Мужская цепь арго' }}</div>
        <div class="product-card__description">{{ description ?? 'Эти великолепные весы сигма, подарят вам наслаждение, рамзер 40 на 20' }}</div>
    </div>
</template>
<script setup lang="ts">
defineProps({
    image: String,
    title: String,
    description: String,
})
</script>
<style lang="scss" scoped>
.product-card{
    margin: 1rem;
    display: flex;
    flex-direction: column;
    width: fit-content;
    padding: 3rem;
    @extend %boxShadow;
    border-radius: 2rem;
    @media (min-width: 1921px) {
        border-radius: 1.6vw;
        padding: 2.4vw;
    }
    &__title{
        padding: 1rem 0;
        font-size: 1.5rem;
        @media (min-width: 1921px) {
            padding: 0.8vw 0;
            font-size: 1.2vw;
        }
    }
    &__description{
        font-size: 1rem;
        color: $colorGreyDark;
        @media (min-width: 1921px) {
            font-size: .8vw;
        }
    }
    img{
        width: 30vw;
        height: 20vw;
        overflow: hidden;
    }
}    
</style>