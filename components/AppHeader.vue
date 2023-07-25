<template>
    <header id="header" class="header">
        <nav>
            <div class="header__item">
                Vesi Kazan
            </div>
            <div class="header__item">
                1
            </div>
            <div class="header__item">
                2
            </div>
            <div class="header__item">
                3
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
    background-color: rgba($color: $colorWhite, $alpha: 0.4);
    backdrop-filter: blur(1rem);
    box-shadow: 16px 8px 16px rgba($color: $colorGrey, $alpha: 0.1);
    nav{
        color: $colorBlack;
        display: flex;
        align-items: center;
        background-color: transparent;
    }

    &__item{
        font-size: 1.5rem;
        margin-right: 1.5rem;
        border-radius: 1rem;
        padding: 0.5rem 1rem;
        transition: all 0.4s ease;
        cursor: pointer;
        @media (min-width: 1921px) {
            padding: 0.4vw .8vw;
            font-size: 1.2vw;
            margin-right: 1.2vw;
        }
    }
}
</style>