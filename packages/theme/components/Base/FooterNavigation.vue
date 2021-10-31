<template>
  <nav class="footer-navigation">
    <div
      v-for="(section, key) in items"
      :key="key"
      class="footer-navigation__section"
    >
      <div class="footer-navigation__heading">
        {{ section.label }}
      </div>
      <div class="footer-navigation__links">
        <Component
          :is="getComponent(link)"
          v-for="(link, linkKey) in section.children"
          :key="linkKey"
          class="footer-navigation__item"
          :link="link.uri"
        >
          {{ link.label }}
        </Component>
      </div>
    </div>
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
      return item.uri ? 'SfLink' : 'span';
    },
  },
};
</script>

<style scoped lang="scss">
.footer-navigation {
  display: grid;
  grid-auto-flow: column;
  gap: 100px;

  &__links {
    display: flex;
    flex-direction: column;
    gap: 10px;
    margin-top: 20px;
  }

  &__heading {
    @include subtitle-7;
    color: $white;
  }

  &__item {
    @include body-7;
    color: $white;
    text-decoration: none;
    opacity: 0.64;
  }
}
</style>
