<template>
    <div class="preview">
        <NuxtImg src="/images/mainpage.png" sizes="md:100vw" />
        <div class="title">
            <h1>Весы для ваших нужд</h1>
        </div>
    </div>
</template>

<script setup lang="ts">
</script>


<style lang="scss" scoped>
.preview{
    flex-direction: column;
    padding: 0;
    margin: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    height: fit-content;
    overflow-x: hidden;
}
.title{
    background-color: transparent;
    position: absolute;
}
</style>