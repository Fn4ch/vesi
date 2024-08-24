<template>
    <header id="header" class="header">
        <nav class="navigation">
            <div class="navigation__logo">
                <Truck />
            </div>
            <div class="navigation__links">
                <NuxtLink class="link">Каталог</NuxtLink>
                <NuxtLink class="link">Контакты</NuxtLink>
            </div>
        </nav>
    </header>
</template>
<script setup lang="ts">
import Truck from '~/src/images/Truck.vue';

</script>

<style lang="scss" scoped>
.header{
    align-items: center;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    backdrop-filter: blur(0.1rem);
    background-color: transparent;
    font-size: 20px;
    @media (max-width:1921px) {
        font-size: 1vw;
    }
}

.navigation{
    display: flex;
    justify-content: space-between;
    padding: 12px 120px;
    color: $colorBlack;
    align-items: center;
    background-color: transparent;

    @media (min-width: 1921px) {
        padding: 0.6vw 6vw;
    }
    
    &__links{
        display: flex;
        column-gap: 48px;
        row-gap: 48px;
        background-color: transparent;
        @media (min-width: 1921px) {
        row-gap: 2.4vw;
        }
    }
}

.link{
    font-size: 1.25rem;
    background-color: transparent;
    color: white;
}
</style>