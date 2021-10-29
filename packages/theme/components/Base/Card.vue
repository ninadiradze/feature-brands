<template>
  <div class="card">
    <div
      v-if="showHeader"
      class="card__header"
    >
      <slot name="header" />
    </div>
    <div class="card__body">
      <slot />
    </div>
  </div>
</template>

<script>
export default {
  props: {
    shadow: {
      type: [String, null],
      default: null
    },
    showHeader: {
      type: Boolean,
      default: true
    }
  }
};
</script>

<style scoped lang="scss">
  .card {
    background-color: $white;
    box-shadow: 0 toRem(1) toRem(2) rgba(53, 66, 82, 0.08), 0 toRem(3) toRem(12) rgba(53, 66, 82, 0.04);
    border-radius: toRem(8);

    &__body {
      padding: toRem(24);
    }
  }
</style>
