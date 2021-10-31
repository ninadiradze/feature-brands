<template>
  <div class="input-number">
    <Button
      type="bordered"
      class="input-number__button input-number__button--minus"
      :disabled="disabled || !decreasable"
      @click="decrease"
    >
      <Icon
        name="minus"
        :width="16"
        :height="16"
      />
    </Button>

    <div class="input-number__value">
      {{ value }}
      <template v-if="label">
        <div class="input-number__label">{{ label }}</div>
      </template>
    </div>

    <Button
      type="bordered"
      class="input-number__button input-number__button--plus"
      :disabled="disabled || !increasable"
      @click="increase"
    >
      <Icon
        name="plus"
        :width="16"
        :height="16"
      />
    </Button>

    <input
      ref="input"
      type="number"
      :name="name"
      :value="value"
      :min="min"
      :max="max"
      :step="step"
      autocomplete="off"
    >
  </div>
</template>

<script>
import Icon from '~/components/Icon';
import Button from './Button';

export default {
  components: {
    Icon,
    Button,
  },

  props: {
    label: {
      type: [String, null],
      default: null,
    },

    max: {
      type: Number,
      default: Infinity,
    },

    min: {
      type: Number,
      default: -Infinity,
    },

    step: {
      type: Number,
      default: 1,
    },

    disabled: {
      type: Boolean,
      default: false,
    },

    modelValue: {
      type: Number,
      default: NaN,
    },
  },

  data() {
    return {
      value: this.min,
    }
  },

  computed: {
    increasable() {
      return this.value < this.max;
    },

    decreasable() {
      return this.value > this.min;
    },
  },

  methods: {
    /**
     *
     * Decrease value
     */
    decrease() {
      let { value } = this;

      if (isNaN(value)) {
        value = this.min;
      }

      this.setValue(value - this.step);
    },

    /**
     *
     * Increase value
     */
    increase() {
      let { value } = this;

      if (isNaN(value)) {
        value = this.min;
      }

      this.setValue(value + this.step);
    },

    /**
     *
     * @param value
     */
    setValue(value) {
      let newValue = value;

      if (!isNaN(newValue)) {
        if (this.min <= this.max) {
          newValue = Math.min(this.max, Math.max(this.min, newValue));
        }
      }

      this.value = newValue;
    },
  }
};
</script>

<style scoped lang="scss">
.input-number {
  display: flex;
  justify-content: space-between;
  height: toRem(40);
  box-shadow: 0px 1px 2px rgba(100, 109, 140, 0.08);
  border-radius: toRem(68);

  &__button {
    display: flex;
    align-items: center;
    width: toRem(53.5);
    height: 100%;
    font-weight: bold;

    &--minus {
      border-right: 0;
      border-top-right-radius: 0;
      border-bottom-right-radius: 0;
      padding-left: toRem(22);
    }

    &--plus {
      border-left: 0;
      border-top-left-radius: 0;
      border-bottom-left-radius: 0;
      padding-left: toRem(15);
    }
  }

  &__value {
    display: flex;
    justify-content: center;
    align-items: center;
    column-gap: toRem(4);
    font-weight: 600;
    font-size: toRem(16);
    background: $gray-light-1;
    border: toRem(1) solid $border-regular;
    width: calc(100% - 107px);
    height: calc(100% - 2px);

    .input-number__label {
      color: #646D8C;
      font-size: toRem(14);
      font-weight: normal;
    }
  }

  input {
    display: none;
  }
}
</style>
