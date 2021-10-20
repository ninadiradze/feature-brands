<template>
  <nav class="breadcrumbs">
    <Component
      :is="key < links.length - 1 ? 'a' : 'span'"
      v-for="(link, key) in links"
      :key="key"
      :href="link.url"
      class="breadcrumbs__link"
      :class="{ 'breadcrumbs__link--disabled': key >= links.length - 1 }"
    >
      {{ link.label }}
    </Component>
  </nav>
</template>

<script>
export default {
  props: {
    links: {
      type: Array,
      default: () => [],
    },
  },
};
</script>

<style scoped lang="scss">
@import '~/assets/styles'; // TODO: remove

.breadcrumbs {
  &__link {
    position: relative;
    @include subtitle-8;

    &:not(&--disabled) {
      margin-right: 1.5rem;

      &::after {
        content: '';
        position: absolute;
        width: 0.75rem;
        height: 0.75rem;
        background-image: url('/icons/psp/System/Chevron-Right.svg');
        background-size: cover;
        right: -1rem;
        top: 50%;
        transform: translateY(-50%);
      }
    }

    &--disabled {
      color: $text-gray-regular;
    }
  }
}
</style>
