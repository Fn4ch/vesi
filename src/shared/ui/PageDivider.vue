<template>
    <div class="divider">
        {{ text }}
    </div>
</template>

<script setup lang="ts">
defineProps({
    text: String
})
</script>


<style lang="scss" scoped>
    .divider{
        left: 0;
        right: 0;
        padding: 1rem;
        font-size: 1rem;
        background-color: rgba($color: $colorBlue, $alpha: .6);
        margin: 2rem 0;
    }
</style>