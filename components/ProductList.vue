<template>
    <div class="products-list">
        <ProductCard v-for="(p, index) in products" :title="p.title" :description="p.description" :class="index % 2 === 1 ? 'products-list__left' : 'products-list__right'"/>
    </div>
</template>
<script setup lang="ts">

interface Vesi{
    title: string
    description: string
}

const products: Vesi[] = [
    {
        title: 'Мужские весы арго',
        description: 'Весы предназначены для взвешивания сигма гениев, геев, камазистоф трактарисоф и так далее, размер 41024 на 2см'
    },
    {
        title: 'Ультра-весы "Ховангипножиротрон"',
        description: 'Взвешивание наших шансов стать блогерами, пока весы считают лайки и просмотры...'
    },
    {
        title: 'Танцующие весы "Макаренщик"',
        description: 'Когда ты стоишь на них, они танцуют макарену, а когда не стоишь - поют "Эй, бро, ты где?"'
    },
    {
        title: 'Самоходные весы "Телепортище"',
        description: 'Забыл, что весят волосы - оказался в телепортере и прыгнул в параллельную вселенную.'
    },
    {
        title: 'Гипер-весы "Мемочувак 3000"',
        description: 'Когда ты стоишь на них, они выводят случайный мем, чтобы разбавить серость повседневности.'
    },
    {
        title: 'Антигравитационные весы "Левитатор"',
        description: 'Встал на них, и вместо взвешивания - взлетел над землей. Подарок астронавтам и храбрым мечтателям.'
    },
    {
        title: 'Смешные весы "Смехоген"',
        description: 'Когда смотришь на свой вес, они показывают комический смайлик - смех гарантирован!'
    },
    {
        title: 'Интергалактические весы "Везерфлай"',
        description: 'Эти весы не только взвешивают тело, но и определяют, какой планетарный флай ты был бы.'
    },
    {
        title: 'Шпионские весы "Весоподслушиватор"',
        description: 'Теперь ваши весы подслушивают ваши разговоры и отправляют данные прямо в агентство шпионов.'
    },
    {
        title: 'Игровые весы "Весогейм"',
        description: 'Проходи уровни, собирай кристаллы и узнай свой вес, играя на этих захватывающих весах.'
    }
];

</script>
<style lang="scss" scoped>
.products-list{
    display: flex;
    margin: 0 10rem;
    @media (min-width: 1921px) {
        margin: 0 14vw;
    }
    @media (max-width: 1024px) {
       margin: 0 2rem; 
    }
    @media (max-width: 440px) {
        margin: 0 1rem;
    }
    flex-direction: column;
    &__left{
        align-self: flex-end;
        align-items: flex-end;
    }
    &__right{
        align-self: flex-start;
        align-items: flex-start;
    }
}
</style>