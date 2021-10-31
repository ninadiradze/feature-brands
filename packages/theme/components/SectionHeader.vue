<template>
  <div class="section-header">
    <div class="section-header__heading-wrapper">
      <div v-if="icon" class="section-header__icon" :class="iconClasses">
        <img :src="iconUri" :alt="icon" />
      </div>
      <div class="section-header__heading">
        {{ heading }}
      </div>
      <Button
        v-if="showSeeMore"
        type="tertiary"
        class="section-header__see-more"
        icon="System/Chevron-Right"
        icon-position="right"
      >
        {{ $t('See all') }}
      </Button>
    </div>
    <div v-if="categories.length > 0" class="section-header__categories">
      <div
        v-for="(category, key) in categories"
        :key="key"
        class="section-header__category"
      >
        <Button type="bordered">
          {{ category }}
        </Button>
      </div>
    </div>
  </div>
</template>

<script>
import Button from '~/components/Base/Button';

export default {
  components: { Button },
  props: {
    heading: {
      type: String,
      default: '',
    },
    icon: {
      type: [String, null],
      default: null,
    },
    iconBackground: {
      type: [String, null],
      default: null,
    },
    categories: {
      type: Array,
      default: () => [],
    },
    showSeeMore: {
      type: Boolean,
      default: false,
    },
    seeMoreLink: {
      type: String,
      default: 'https://google.com',
    },
  },
  computed: {
    iconClasses() {
      return `section-header__icon--${this.iconBackground}`;
    },
    iconUri() {
      return `/icons/psp/${this.icon}.svg`;
    },
  },
};
</script>

<style scoped lang="scss">
@import '~/assets/styles'; // TODO: remove

.section-header {
  &__heading-wrapper {
    display: flex;
    align-items: center;
  }
  &__heading {
    @include headline-4;
    color: $text-black;
  }
  &__icon {
    width: 2.5rem;
    height: 2.5rem;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    margin-right: 0.75rem;

    &--green {
      background-color: $green-regular;
    }
    &--yellow {
      background-color: $yellow-regular;
    }
    &--pink {
      background-color: $pink-regular;
    }
  }
  &__see-more {
    margin-left: auto;
  }
  &__categories {
    margin-top: 1rem;
  }
  &__category {
    display: inline-block;
    &:not(:last-child) {
      margin-right: 0.625rem;
    }
    .btn {
      color: $text-gray-regular;
    }
  }
}
</style>
