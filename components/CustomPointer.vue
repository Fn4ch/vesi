<template>
    <div class="background">
        <div class="custom-pointer" :style="pointerStyle"></div>
    </div>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'

const pointerX = ref<number>(0);
const pointerY = ref<number>(0);

const updatePointerPosition = (event: MouseEvent) => {
  pointerX.value = event.clientX;
    pointerY.value = event.clientY;
  console.log(event.clientX, event.clientY)
}

const pointerStyle = computed(()=> {
    return `transform: translateX(${pointerX.value}px) translateY(${pointerY.value}px)`
})

onMounted(() => {
  window.addEventListener('mousemove', updatePointerPosition);
})

onUnmounted(() => {
  window.removeEventListener('mousemove', updatePointerPosition);
})
</script>

<style lang="scss" scoped>
.background{
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    z-index: -200;
}
.custom-pointer{
    position: absolute;
    pointer-events: none;
    z-index: -100;
    backface-visibility: hidden;
    transition: transform .15s ease-out, opacity 0.5s ease-out;
    box-shadow: 0px 0px 64px 32px rgba($color: teal, $alpha: 0.4);
    border-radius: 50%;
}
</style>