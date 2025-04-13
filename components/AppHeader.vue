<template>
    <header id="header" class="header">
        <nav class="navigation">
            <div class="navigation__logo">
                <img src="../src/assets/logo.svg" class="logo"/>
            </div>
            <div class="navigation__links">
                <NuxtLink class="link">Каталог</NuxtLink>
                <NuxtLink class="link">Контакты</NuxtLink>
            </div>
        </nav>
    </header>
</template>
<script setup lang="ts">

</script>

<style lang="scss" scoped>
.logo{
    width: 64px;
    color: white;
    background-color: transparent;
}

.header{
    align-items: center;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    backdrop-filter: blur(0.1rem);
    background-color: $colorBlack;
    font-size: 20px;
    z-index: 10;
    @media (max-width:1921px) {
        font-size: 1vw;
    }
}

.navigation{
    display: flex;
    justify-content: space-between;
    padding: 4px 120px;
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

    &__logo{
        background-color: transparent;
    }
}

.link{
    font-size: 1.25rem;
    background-color: transparent;
    color: white;
}
</style>