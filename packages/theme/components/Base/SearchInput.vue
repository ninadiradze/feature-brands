<template>
  <div class="input input--md" :class="classes">
    <input :id="id" type="text" :placeholder="placeholder" />
    <label :for="id">
      {{ label }}
    </label>
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
export default {
  props: {
    id: {
      type: String,
      required: true,
    },
    placeholder: {
      type: String,
      required: true,
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
      padding: 0 toRem(12);
      box-sizing: border-box;
    }
  }

  &--icon-left {
    input {
      padding-left: 2.75rem;
    }

    #{$input}__icon--left {
      position: absolute;
      left: toRem(12);
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

  input {
    color: $gray-regular;
    width: 100%;
    height: toRem(40);
    border: solid 1px $border-regular;
    border-radius: toRem(68);
    transition: all $transition-duration / 2 ease-in-out;
    box-shadow: 0 1px 2px 0 #646d8c14;

    &:focus {
      background-color: $white;
      border-color: $blue-regular;
      outline: none;
      color: $text-black;
    }
  }
}
</style>
