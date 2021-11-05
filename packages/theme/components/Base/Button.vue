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
    variant: {
      type: String,
      default: 'primary',
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
      return `btn--${this.size} btn--${this.variant} btn--${this.type}  ${
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
    &.btn--primary {
      background-color: $blue-regular;
      color: $text-white;

      &:hover {
        background-color: $blue-dark;
      }
    }

    &.btn--secondary {
      background-color: $green-regular;
      color: $text-white;

      &:hover {
        background-color: $green-dark;
      }
    }
  }
  &--filled-inverted {
    background-color: $blue-light-2;
    color: $text-blue;
  }
  &--bordered {
    border: solid 1px $border-regular;
    color: $text-blue;
    background-color: $white;
  }
  &--tertiary {
    color: $text-blue;
  }

  &--light {
    background-color: $gray-light-2;
    color: #231444;

    &:hover {
      background: rgba(37, 57, 136, 0.1);
      color: #253988;
    }
  }

  &--lg {
    @include subtitle-6;
    padding: 0.75rem 1.25rem;
    border-radius: 4.375rem;
    height: toRem(44);
    &#{$btn}--icon {
      width: toRem(44);
      padding: 0.75rem;
    }
  }
  &--md {
    @include subtitle-7;
    padding: 0.5rem 1rem;
    border-radius: 4.375rem;
    height: toRem(40);
    &#{$btn}--icon {
      width: toRem(40);
      padding: 0.5rem;
    }
  }
  &--sm {
    @include subtitle-8;
    padding: 0.5rem 0.75rem;
    border-radius: 4.375rem;
    height: toRem(32);
    &#{$btn}--icon {
      width: toRem(32);
      padding: toRem(6);
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
