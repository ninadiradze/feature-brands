<template>
  <div class="input input--md" :class="classes">
    <input :id="id" type="text" placeholder=" " />
    <label :for="id">
      {{ label }}
    </label>
    <Button
      v-if="showButton"
      :disabled="buttonDisabled"
      type="bordered"
      size="sm"
      class="input__btn"
      @click="$emit('inputButtonClick', $event)"
    >
      {{ buttonLabel }}
    </Button>
    <img
      v-if="icon"
      :src="iconUri"
      :alt="icon"
      class="input__icon"
      :class="`input__icon--${iconPosition}`"
    />
  </div>
</template>

<script>
import Button from './Button.vue';

export default {
  components: { Button },
  props: {
    id: {
      type: String,
      required: true,
    },
    label: {
      type: String,
      required: true,
    },
    showButton: {
      type: Boolean,
      default: false,
    },
    buttonLabel: {
      type: String,
      default: '',
    },
    buttonDisabled: {
      type: Boolean,
      default: false,
    },
    icon: {
      type: [String, null],
      default: null,
    },
    iconPosition: {
      type: String,
      default: 'left',
    },
  },
  computed: {
    classes() {
      return `input--${this.size} input--${this.type} ${
        this.icon ? `input--icon-${this.iconPosition}` : ''
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

.input {
  $input: &;
  display: flex;
  position: relative;

  &--md {
    input {
      padding: 0.875rem 1rem;
      box-sizing: border-box;
    }
  }

  &--icon-left {
    input {
      padding-left: 2.75rem;
    }
    label {
      left: calc(2.75rem + 1px) !important;
    }

    #{$input}__icon--left {
      position: absolute;
      left: calc(1rem + 1px);
      top: 50%;
      transform: translateY(-50%);
    }
  }

  &--icon-right {
    input {
      padding-right: 2.75rem;
    }

    #{$input}__icon--right {
      position: absolute;
      right: calc(1rem + 1px);
      top: 50%;
      transform: translateY(-50%);
    }
  }

  &__icon {
    width: 16px;
    height: 16px;
  }

  input {
    color: $gray-regular;
    width: 100%;
    height: 48px;
    background-color: $gray-light-1;
    border: solid 1px $border-regular;
    border-radius: 0.5rem;
    transition: all $transition-duration / 2 ease-in-out;

    &:not(:placeholder-shown) {
      padding-top: 1.75rem;

      + label {
        font-size: 10px;
        transform: translateY(-20%);
      }
    }

    &:focus {
      background-color: $white;
      border-color: $blue-regular;
      outline: none;
      color: $text-black;
    }
  }

  label {
    position: absolute;
    top: 0;
    left: calc(1rem + 1px);
    bottom: 0;
    display: flex;
    align-items: center;
    color: $gray-regular;
    font-size: 0.825rem;
    cursor: text;
    transition: all $transition-duration ease-in-out;
  }

  &__btn {
    position: absolute;
    top: 0.5rem;
    right: 0.625rem;
  }
}
</style>
