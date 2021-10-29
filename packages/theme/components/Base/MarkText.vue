<template>
  <div
    class="mark-text"
    :class="classes"
  >
    <div class="mark-text__icon">
      <Icon :name="icon" />
    </div>
    <div class="mark-text__label">{{ label }}</div>
  </div>
</template>

<script>
import Icon from '~/components/Icon';

export default {
  components: {
    Icon,
  },

  props: {
    label: {
      type: [String, null],
      default: null,
    },

    type: {
      type: Number
    }
  },

  computed: {
    classes() {
      return {
        'mark-text--grey': !this.type
      }
    },

    icon() {
      return this.type ? 'check-circle-active' : 'cross-fill'
    }
  }
}
</script>

<style scoped lang="scss">
.mark-text {
  display: flex;
  align-items: center;
  column-gap: toRem(7);

  &__icon {
    color: $green-regular;
  }

  &--grey {
    color: #646D8C;

    .mark-text__icon {
      color: #646D8C;
    }
  }
}
</style>
