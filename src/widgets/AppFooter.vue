<template>
  <footer class="footer">
    <div class="footer__container">
      <div class="footer__contacts">
        <div class="footer__contacts_logo">
          <img src="@/assets/logo.svg" class="logo">
          <span>ООО "Весы"</span>
        </div>
        <div class="contacts">
          <h4 class="contacts__title">Контакты</h4>
          <ul class="contacts__list">
            <li class="contacts__item">
              <a :href="`tel:${number}`">{{ number }}</a>
            </li>
            <li class="contacts__item">
              <a :href="`tel:${number2}`">{{ number2 }}</a>
            </li>
            <li class="contacts__item">
              <a :href="`mailto:${mail}`">{{ mail }}</a>
            </li>
            <li class="contacts__item">
              {{ address }}
            </li>
          </ul>
        </div>
      </div>

      <div class="footer__dev dev">
        <p class="dev__copyright">&copy; {{ currentYear }} Весы Казань</p>
        <p class="dev__site">
          <a href="https://faotech.dev/ru " target="_blank"><img src="@/public/images/logo.webp" class="logo"></a>
        </p>
      </div>
    </div>
  </footer>
</template>

<script setup lang="ts">

const number = '+79600310185'
const number2 = '+79600310187'
const mail = 'rusbar2008@rambler.ru'
const address = 'Юр. Адрес г. Казань, ул. Маршала Чуйкова 15'

console.log('Footer Config:', {
  number,
  number2,
  mail,
  address
})

onMounted(() => {
  console.log('process.env:', process.env.NUXT_PUBLIC_FOOTER_NUMBER)
})

const currentYear = new Date().getFullYear()
</script>

<style lang="scss" scoped>
.logo{
  background-color: transparent;
  max-width: 156px;
}
.footer {
  background-color: $colorBlack;
  color: $colorWhite;
  padding: 1rem 3rem;

  span{
    background-color: transparent;
  }

  p{
    background-color: transparent;
  }

  &__container {
    display: flex;
    align-items: flex-start;
    
    background-color: $colorBlack;
    color: $colorWhite;
    min-height: 96px;

    @media (min-width: 768px) {
      flex-direction: row;
      justify-content: space-between;
      text-align: left;
    }
  }

  &__logo {
    background-color: transparent;
    img {
      height: 40px;
      width: auto;
      background-color: $colorBlack;
      color: $colorWhite;
    }
  }

  &__contacts{
    display: flex;
    align-items: center;
    background-color: transparent;
    column-gap: 2rem;

    &_logo{
      background-color: transparent;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      span{
        color: $colorOrange;
        font-size: 1.5rem;
      }
    }
  }

  .contacts {
    background-color: $colorBlack;
    color: $colorWhite;
    &__title {
      background-color: transparent;
      font-size: 1.1rem;
      margin-bottom: 0.5rem;
      color: $colorGreen;
    }

    &__item{
      background-color: transparent;


      a{ 
        background-color: transparent;
        text-decoration: none;
        color: $colorWhite;
      }
    }

    &__list {
      background-color: transparent;
      list-style: none;
      padding: 0;
      margin: 0;
      display: flex;
      flex-direction: column;
      gap: 0.4rem;
      font-size: 1rem;

      a {
        text-decoration: none;
        transition: color 0.3s ease;

        &:hover {
          color: $colorGreen;
        }
      }
    }
  }

  .dev {
    display: flex;
    flex-direction: column;
    row-gap: 0.5rem;
    column-gap: 0.5rem;
    margin-top: auto;
    opacity: 0.7;
    background-color: $colorBlack;

    &__site{
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    p{
      background-color: transparent;
    }

    a {
      background-color: transparent;
      color: $colorGreen;
      text-decoration: none;
      font-weight: 500;
      

      &:hover {
        text-decoration: underline;
      }
    }
  }
}
</style>