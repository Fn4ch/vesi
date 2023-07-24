<template>
    <header id="header" class="header">
        <nav>
            <div class="header__item">
                Vesi Kazan
            </div>
            <div class="header__item">
                Х
            </div>
            <div class="header__item">
                У
            </div>
            <div class="header__item">
                Й
            </div>
            <div class="header__item">
                Артур
            </div>
        </nav>
    </header>
</template>
<script setup lang="ts">

</script>

<style lang="scss" scoped>
.header{
    align-items: center;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    background-color: transparent;
    backdrop-filter: blur(1rem);
    box-shadow: 16px 8px 16px rgba($color: $colorGrey, $alpha: 0.1);
    nav{
        color: $colorBlack;
        display: flex;
        align-items: center;
        padding: 1rem 2rem;
        background-color: transparent;
        @media (min-width: 1921px) {
            padding: 0.6vw 1.2vw;
        }
    }

    &__item{
        font-size: 1.5rem;
        margin-right: 1.5rem;
        @media (min-width: 1921px) {
            font-size: 1.2vw;
            margin-right: 1.2vw;
        }
    }
}
</style>