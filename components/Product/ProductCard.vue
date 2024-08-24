<template>
    <div class="product-card">
        <NuxtImg :src="image ?? 'https://via.placeholder.com/600/aae0f3'" fit="cover" alt="product image" />
        <div class="product-card__title">{{ title ?? 'Title' }}</div>
        <div class="product-card__description">{{ description ?? 'Description' }}</div>
        <button>Подробнее</button>
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
    width: min-content;
    padding: 1.5rem;
    @extend %boxShadow;
    border-radius: 1rem;
    @media (min-width: 1921px) {
        border-radius: 1.6vw;
        padding: 2.4vw;
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
        @media (min-width: 1921px) {
            font-size: .8vw;
        }
    }

    &:last-child{
        justify-self: flex-end;
    }
}    
</style>