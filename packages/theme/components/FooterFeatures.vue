<template>
  <div class="footer-features">
    <div class="container">
      <div class="footer-features__grid">
        <div
          v-for="(feature, key) in features"
          :key="key"
          class="footer-feature"
        >
          <div class="footer-feature__icon">
            <img :src="iconUri(feature.icon)" />
          </div>
          <div class="footer-feature__title">
            {{ feature.title }}
          </div>
          <div class="footer-feature__subtitle">
            {{ feature.subtitle }}
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'FooterFeatures',
  data() {
    return {
      features: [
        {
          title: 'სწრაფი მიწოდება',
          subtitle: 'მიწოდება მთელი საქართველოში',
          icon: 'System/Flash-Duotone',
        },
        {
          title: 'რჩეული ბრენდები',
          subtitle: 'მსოფლიოს ნომერ პირველი ბრენდები',
          icon: 'System/Star-Duotone',
        },
        {
          title: 'გარანტირებული ხარისხი',
          subtitle: 'მხოოლოდ რჩეული პროდუქცია',
          icon: 'System/Shield-Duotone',
        },
        {
          title: 'საუკეთესო კატალოგი',
          subtitle: '45 000+ დასახელების პროდუქცია',
          icon: 'System/Basket-Duotone',
        },
      ],
    };
  },
  methods: {
    iconUri(icon) {
      return `/icons/psp/${icon}.svg`;
    },
  },
};
</script>

<style scoped lang="scss">
.footer-features {
  background-color: $white;
  padding: 2rem 0;
  margin-top: 2rem;

  &__grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 20px;
  }
}

.footer-feature {
  &__icon {
    width: toRem(56);
    height: toRem(56);
    box-sizing: border-box;
    border: solid 1px $blue-bright;
    border-radius: 50%;
    float: left;
    margin-right: 1rem;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  &__title {
    @include headline-7;
    color: $black-purple-regular;
    padding-top: 0.25rem;
  }

  &__subtitle {
    @include body-7;
    color: $gray-regular;
    margin-top: 0.25rem;
  }
}
</style>
