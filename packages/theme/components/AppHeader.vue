<template>
  <div>
    <header class="header">
      <div class="container">
        <div class="header__inner">
          <div class="header__logo">
            <img src="/Logo.png" alt="PSP logo" />
          </div>
          <div class="header__grid">
            <div class="header__row">
              <div class="header__col">
                <div class="header__search">
                  <SearchInput
                    id="header-search"
                    placeholder="ძიება"
                    icon="System/Search-Outline"
                  />
                </div>
              </div>
              <div class="header__col">
                <div class="header__buttons">
                  <Button type="bordered" icon-only icon="Flag/UK" />
                  <Button
                    type="bordered"
                    icon-only
                    icon="System/Heart-Outline"
                  />
                  <Button
                    type="bordered"
                    icon-only
                    icon="System/User-Outline"
                  />
                  <Button type="filled-inverted" icon="System/Basket-Outline">
                    კალათა
                  </Button>
                </div>
              </div>
            </div>
            <div class="header__row">
              <div class="header__col">
                <div class="header__nav header__nav--primary">
                  <Navigation
                    :items="navigationPrimary"
                    @openMenu="onOpenMenu"
                  />
                </div>
              </div>
              <div class="header__col">
                <div class="header__nav header__nav--secondary">
                  <Navigation
                    :items="navigationSecondary"
                    :wrap-items="false"
                    @openCitySelector="onOpenCitySelector"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
  </div>
</template>

<script lang="ts">
import { defineComponent } from '@vue/composition-api';
import { clickOutside } from '@storefront-ui/vue/src/utilities/directives/click-outside/click-outside-directive.js';
import Button from './Base/Button.vue';
import SearchInput from './Base/SearchInput.vue';
import Navigation from './Base/Navigation.vue';

export default defineComponent({
  components: { Navigation, SearchInput, Button },
  directives: { clickOutside },
  data() {
    return {
      navigationPrimary: [
        {
          label: 'კატეგორიები',
          icon: 'System/Menu-Outline',
          iconRight: 'System/Chevron-Down',
          style: 'primary',
          event: 'openMenu',
        },
        {
          divider: true,
        },
        {
          label: 'მედიკამენტები',
          uri: 'http://localhost:3000/medikamentebi',
        },
        {
          label: 'კოსმეტიკა',
          uri: 'http://localhost:3000/kosmetika',
        },
        {
          label: 'დედა & ბავშვი',
          uri: 'http://localhost:3000/deda-da-bavshvi',
        },
        {
          label: 'COVID19',
          uri: 'http://localhost:3000/deda-da-bavshvi',
          icon: 'Category/COVID19',
          style: 'pink',
        },
      ],
      navigationSecondary: [
        {
          label: 'ოჯახის ბარათი',
          uri: 'http://localhost:3000/deda-da-bavshvi',
          style: 'secondary',
        },
        {
          label: 'ვაკანსიები',
          uri: 'http://localhost:3000/medikamentebi',
          style: 'secondary',
        },
        {
          divider: true,
        },
        {
          label: 'ქუთაისი',
          icon: 'System/Pin2-Outline',
          style: 'secondary',
          event: 'openCitySelector',
        },
      ],
    };
  },
  methods: {
    onOpenCitySelector() {
      alert('city selector opened');
    },
    onOpenMenu() {
      alert('menu opened');
    },
  },
});
</script>

<style lang="scss" scoped>
.header {
  background-color: $white;
  position: relative;
  margin-bottom: 2rem;

  &::after {
    content: '';
    position: absolute;
    height: 1px;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(
      270deg,
      #c6067f 0%,
      #d6405b 12.66%,
      #ec8f2a 30.08%,
      #fac00c 49%,
      #ffd300 68.42%,
      #ccc211 84.53%,
      #ccc211 100%
    );
  }

  &__inner {
    padding: 1rem 0;
    display: flex;
  }

  &__grid {
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }

  &__row {
    display: flex;
    width: 100%;
  }

  &__col {
    display: flex;
    flex-grow: 1;
  }

  &__logo {
    width: toRem(88);
    height: toRem(88);
    flex-shrink: 0;
    margin-right: 2rem;

    img {
      max-width: 100%;
      max-height: 100%;
    }
  }

  &__buttons {
    display: flex;
    gap: toRem(12);
    margin-left: auto;
  }

  &__search {
    .input {
      width: 400px;
    }
  }

  &__nav {
    &--primary {
      margin-left: -1rem;
    }
    &--secondary {
      margin-left: auto;
    }
  }
}
</style>
