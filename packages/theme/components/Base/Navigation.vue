<template>
  <nav class="navigation">
    <Component
      :is="getComponent(item)"
      v-for="(item, key) in items"
      :key="key"
      class="navigation__item navigation-item"
      :class="getClasses(item)"
      :link="item.uri"
    >
      <img
        v-if="item.icon"
        class="navigation-item__icon"
        :src="getIconUri(item.icon)"
      />
      {{ item.label }}
      <img
        v-if="item.iconRight"
        class="navigation-item__icon navigation-item__icon--right"
        :src="getIconUri(item.iconRight)"
      />
    </Component>
  </nav>
</template>

<script>
import { SfLink } from '@storefront-ui/vue';

export default {
  components: {
    SfLink,
  },
  props: {
    items: {
      type: Array,
      default: () => [],
    },
  },
  methods: {
    getComponent(item) {
      return item.uri ? 'SfLink' : item.divider ? 'div' : 'span';
    },
    getIconUri(icon) {
      return `/icons/psp/${icon}.svg`;
    },
    getClasses(item) {
      return `navigation-item--${item.style ? item.style : 'default'}
      navigation-item--${item.divider ? 'divider' : 'default'}`;
    },
  },
};
</script>

<style lang="scss">
@import '~/assets/styles'; // TODO: remove

.navigation {
  display: flex;
  align-items: center;
}

.navigation-item {
  text-decoration: none;
  padding: 0.5rem 1rem;
  display: flex;
  align-items: center;
  cursor: pointer;
  white-space: nowrap;

  &--divider {
    cursor: default;
    height: 32px;
    width: 1px;
    background-color: $border-regular;
    padding: 0;
  }
  &--default {
    @include subtitle-6;
  }
  &--primary {
    @include headline-6;
    color: $text-blue;
  }
  &--secondary {
    @include subtitle-6;
    color: $text-gray-regular;
    &:hover {
      color: $text-gray-regular;
    }
  }
  &--pink {
    @include subtitle-6;
    color: $pink-regular;
    &:hover {
      color: $pink-regular;
    }
  }

  &__icon {
    margin-right: 0.5rem;

    &--right {
      margin-right: 0;
      margin-left: 0.5rem;
    }
  }
}
</style>
