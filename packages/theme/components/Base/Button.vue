<template>
  <button class="btn" :class="classes" @click="$emit('click', $event)">
    <img
      v-if="icon && iconPosition !== 'right'"
      :src="iconUri"
      :alt="icon"
      class="btn__icon"
      :class="{ 'btn__icon--left': iconPosition === 'left' }"
    />
    <slot />
    <img
      v-if="icon && iconPosition === 'right'"
      :src="iconUri"
      :alt="icon"
      class="btn__icon btn__icon--right"
    />
  </button>
</template>

<script>
export default {
  props: {
    size: {
      type: String,
      default: 'md',
    },
    type: {
      type: String,
      default: 'filled',
    },
    icon: {
      type: [String, null],
      default: null,
    },
    iconPosition: {
      type: String,
      default: 'left',
    },
    iconOnly: {
      type: Boolean,
      default: false,
    },
  },
  computed: {
    classes() {
      return `btn--${this.size} btn--${this.type} ${
        this.iconOnly ? 'btn--icon' : ''
      }`;
    },
    iconUri() {
      return `/icons/psp/${this.icon}.svg`;
    },
  },
};
</script>

<style scoped lang="scss">
@import '~/assets/styles'; // TODO: remove

.btn {
  $btn: &;
  border: none;
  background-color: transparent;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  box-sizing: border-box;

  &:disabled {
    opacity: 0.5;
  }

  &--filled {
    background-color: $blue-regular;
    color: $text-white;
  }
  &--bordered {
    border: solid 1px $border-regular;
    color: $text-blue;
    background-color: $white;
  }
  &--tertiary {
    color: $text-blue;
  }
  &--lg {
    @include subtitle-6;
    padding: 0.75rem 1.25rem;
    border-radius: 4.375rem;
    &#{$btn}--icon {
      padding: 0.75rem;
    }
  }
  &--md {
    @include subtitle-7;
    padding: 0.625rem 1.25rem;
    border-radius: 4.375rem;
    &#{$btn}--icon {
      padding: 0.625rem;
    }
  }
  &--sm {
    @include subtitle-8;
    padding: 0.5rem 0.75rem;
    border-radius: 4.375rem;
    height: 32px;
    &#{$btn}--icon {
      padding: 0.5rem;
    }
  }

  &:not(&--icon) &__icon {
    &--right {
      margin-left: 0.5rem;
    }
    &--left {
      margin-right: 0.5rem;
    }
  }
}
</style>
