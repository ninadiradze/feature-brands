<template>
  <div class="product__price-countdown">
    <Icon
      name="timer"
      :width="14"
      :height="14"
    />
    {{ label }}
  </div>
</template>

<script>
import Icon from '~/components/Icon';

export default {
  components: {
    Icon
  },

  props: {
    label: {
      type: String,
      required: true
    }
  }
};
</script>

<style scoped lang="scss">
  .product__price-countdown {
    display: flex;
    align-items: center;
    column-gap: toRem(4);
    font-size: toRem(12);
    font-weight: 500;
    color: $pink-regular;
  }
</style>
