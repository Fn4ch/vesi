<template>
    <div ref="preview" class="preview">
        <NuxtImg src="/images/mainpage.png" sizes="md:100vw" class="image"/>
        <div class="title">
            <h1>Весы для ваших нужд</h1>
        </div>
    </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue'

const preview = ref<HTMLElement | null>(null)
let lastScrollPosition = 100

onMounted(() => {
    window.addEventListener('scroll', handleScroll)
});

function handleScroll() {
    const currentScrollPosition = window.scrollY;

    if (preview.value) {
        if (currentScrollPosition > lastScrollPosition) {
            preview.value.classList.add('slide-up');
            preview.value.classList.remove('slide-down');
        } else {
            preview.value.classList.add('slide-down');
            preview.value.classList.remove('slide-up');
        }

        lastScrollPosition = currentScrollPosition;
    }
}
</script>

<style lang="scss" scoped>
.image{
    filter: brightness(80%);
    z-index: 0;
}
.preview{
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 100%;
    height: 100vh; 
    overflow: hidden;
    transition: transform 1s ease-in-out, visibility 1s ease-in-out, filter 1s ease;
    filter: blur(0); 
}

.slide-up {
    transform: translateY(-100%); 
    visibility: hidden; 
    filter: blur(6px); 
}

.slide-down {
    transform: translateY(0); 
    visibility: visible; 
    filter: blur(0); 
}

.title{
    background-color: transparent;
    position: absolute;
}
</style>