<template>
    <article class="products">
        <div class="title">
            <h2>Найдите лучшее решение для вас</h2>
            <h4>Широкий выбор для всех случаев</h4>
        </div>
        <section class="products-list">
            <ProductCard 
            v-for="(p, index) in PRODUCTS_DATA" 
            :image="p.image" 
            :title="p.title" 
            :description="p.description" 
            :class="index % 2 === 1 ? 'products-list__left' : 'products-list__right'"/>
        </section>
    </article>
</section></template>
<script setup lang="ts">
import {PRODUCTS_DATA} from '@/src/shared/constants/PRODUCTS'

</script>
<style lang="scss" scoped>
.products{
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    align-items: center;
    row-gap: 1rem;
    padding-top: 4rem;

    h2{
        font-size: 2.2rem;
        height: 1.4;
    }

    h4{
        font-weight: 400;
    }
}

.title{
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;
}

.products-list{
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 0.5rem;
    padding: 1.4rem;
    @media (max-width: 1440px) {
        grid-template-columns: repeat(2, 1fr);
    }
}
</style>