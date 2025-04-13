<template>
<div>
    <AppHeader />
    <div id="content">
        <slot />
    </div>
</div>
</template>

<script setup lang="ts">
import AppHeader from '~/components/AppHeader.vue';



</script>

<style lang="scss" scoped>
#content{
    display: flex;
    flex-direction: column;
    padding: 0px auto;
    color: $colorBlack;
}
</style>