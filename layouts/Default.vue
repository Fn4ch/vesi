<template>
        <AppHeader />
        <CustomPointer style="position: fixed;"/>
        <div id="content">
            <slot />
        </div>
</template>

<script setup lang="ts">
import AppHeader from '../components/AppHeader.vue';
import CustomPointer from '../components/CustomPointer.vue'



</script>

<style lang="scss" scoped>
#content{
    display: flex;
    flex-direction: column;
    padding: 0px auto;
    color: $colorBlack;
    margin: 200px auto auto auto;
}
</style>