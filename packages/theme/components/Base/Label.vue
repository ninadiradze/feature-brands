<template>
  <div class="label" :class="classes">
    <img v-if="icon" :src="iconUri" :alt="icon" class="label__icon" />
    <slot />
  </div>
</template>

<script>
export default {
  props: {
    size: {
      type: String,
      default: 'md',
    },
    color: {
      type: String,
      default: 'blue',
    },
    icon: {
      type: [String, null],
      default: null,
    },
    transparent: {
      type: Boolean,
      default: false,
    },
    noBackground: {
      type: Boolean,
      default: false,
    },
  },
  computed: {
    classes() {
      return `label--${this.size} label--${this.color} ${
        this.transparent ? 'label--transparent' : ''
      } ${this.noBackground ? 'label--no-bg' : ''}`;
    },
    iconUri() {
      return `/icons/psp/${this.icon}.svg`;
    },
  },
};
</script>

<style scoped lang="scss">
@import '~/assets/styles'; // TODO: remove

.label {
  $label: &;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  border-radius: 3.625rem;
  @include headline-8;

  &--md {
    padding: 0.25rem 0.625rem;
  }
  &--sm {
    padding: 0.125rem 0.5rem;
  }

  &--blue {
    background-color: $blue-regular;
    color: $white;
  }
  &--green {
    background-color: $green-regular;
    color: $white;
  }
  &--yellow {
    background-color: $yellow-regular;
    color: $white;
  }
  &--pink {
    background-color: $pink-regular;
    color: $white;

    &#{$label}--transparent {
      color: $pink-regular;
      background-color: $pink-light-1;
    }
  }
  &--no-bg {
    background-color: transparent !important;
  }

  &__icon {
    width: 0.75rem;
    height: 0.75rem;
    margin-right: 0.25rem;
  }
}
</style>
