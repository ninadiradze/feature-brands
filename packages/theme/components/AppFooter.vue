<template>
  <div>
    <footer class="footer">
      <div class="container">
        <div class="footer__section footer__section--primary">
          <div class="footer__logo">
            <img src="/Logo.png" alt="PSP logo" />
          </div>
          <div class="footer__nav">
            <FooterNavigation :items="navigation" />
          </div>
        </div>
      </div>
      <div class="footer__section footer__section--secondary">
        <div class="container">
          <div class="footer__bottom-bar">
            <div class="footer__copyright">
              © 2021, PSP
            </div>
            <div class="footer__apps">
              <img src="/homepage/apple.png" />
              <img src="/homepage/google.png" />
            </div>
            <button class="footer__up">
              <img src="/icons/psp/System/Chevron-Top.svg" />
              <span>UP</span>
            </button>
          </div>
        </div>
      </div>
    </footer>
  </div>
</template>

<script>
import FooterNavigation from './Base/FooterNavigation.vue';

export default {
  components: { FooterNavigation },
  data() {
    return {
      navigation: [
        {
          label: 'ნავიგაცია',
          children: [
            {
              label: 'ვაკანსიები',
              uri: 'vakansiebi',
            },
            {
              label: 'ჩემი ოჯახის ბარათი',
              uri: 'chemi-ojaxis-barati',
            },
            {
              label: 'აფთიაქები',
              uri: 'aftiaqebi',
            },
            {
              label: 'კონტაქტი',
              uri: 'kontaqti',
            },
          ],
        },
        {
          label: 'კომპანია',
          children: [
            {
              label: 'კრედო',
              uri: 'kredo',
            },
            {
              label: 'კომპანია',
              uri: 'kompania',
            },
            {
              label: 'დამფუძნებლები',
              uri: 'damfudzneblebi',
            },
            {
              label: 'აღიარება',
              uri: 'aghiareba',
            },
          ],
        },
        {
          label: 'PSP',
          children: [
            {
              label: 'PSP იმპორტი',
              uri: 'psp-importi',
            },
            {
              label: 'PSP აფთიაქი',
              uri: 'psp-aftiaqi',
            },
            {
              label: 'GMP',
              uri: 'gmp',
            },
            {
              label: 'PSP ჰოსპიტალი',
              uri: 'psp-hospitali',
            },
            {
              label: 'PSP დაზღვევა',
              uri: 'psp-dazghveva',
            },
          ],
        },
        {
          label: 'პირობები',
          children: [
            {
              label: 'კონფიდენციალობა',
              uri: 'konfidencialoba',
            },
            {
              label: 'წესები და პირობები',
              uri: 'tsesebi-da-pirobebi',
            },
            {
              label: 'მიწოდების პირობები',
              uri: 'mitsodebis-pirobebi',
            },
          ],
        },
        {
          label: 'კონტაქტი',
          children: [
            {
              label: '148b Davit Agmashenebeli Ave, Tbilisi, Georgia',
            },
            {
              label: '(+995) 032 240 20 20',
              uri: 'tel:+9950322402020',
            },
            {
              label: 'info@psp.ge',
              uri: 'mailto:info@psp.ge',
            },
          ],
        },
      ],
    };
  },
};
</script>

<style lang="scss" scoped>
.footer {
  background-color: $blue-regular;

  &__section {
    &--primary {
      padding: 3rem 0;
      display: flex;
    }
  }

  &__logo {
    width: toRem(88);
    height: toRem(88);
    flex-shrink: 0;

    img {
      max-width: 100%;
      max-height: 100%;
    }
  }

  &__nav {
    width: 100%;
    margin-left: toRem(100);
  }

  &__bottom-bar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: toRem(100);
    border-top: solid 1px $blue-bright;
  }

  &__copyright {
    @include body-6;
    color: $white;
  }

  &__apps {
    display: flex;
    gap: 1.5rem;

    img {
      height: 2rem;
    }
  }

  &__up {
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    background-color: transparent;
    border: none;
    outline: none;
    font-size: 13px;
    color: $gray-bright;

    span {
      margin-left: 0.5rem;
    }
  }
}
</style>
