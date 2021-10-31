<template>
  <div
    class="product__price"
    :class="classes"
  >
    <template v-if="hasDiscount">
      <div class="product__price-item">
        <div class="product__price-discounted">{{ discountedPrice }}₾</div>
        <div class="product__price-original">{{ originalPrice }}₾</div>
      </div>
    </template>

    <product-countdown
      v-if="hasCountdown"
      label="20სთ 20წთ 40წმ"
    />
  </div>
</template>

<script>
import ProductCountdown from '~/components/ProductCountdown';

export default {
  components: {
    ProductCountdown
  },

  props: {
    hasDiscount: {
      type: Boolean,
      default: true
    },
    hasCountdown: {
      type: Boolean,
      default: true
    },
    discountedPrice: {
      type: [Number, String, null],
      default: '74.50'
    },
    originalPrice: {
      type: [Number, String],
      default: '115.00'
    }
  },

  computed: {
    /**
     *
     * @returns {{'has-discount': Boolean}}
     */
    classes() {
      return {
        'has-discount': this.hasDiscount
      }
    }
  }
}
</script>

<style scoped lang="scss">
.product__price {
  &.has-discount {
    .product__price-item {
      display: flex;
      align-items: center;
      column-gap: toRem(8);
    }
  }

  &-discounted {
    font-size: toRem(24);
    font-weight: bold;
    color: $pink-regular;
  }

  &-original {
    font-size: toRem(20);
    font-weight: 500;
    color: $gray-regular;
    text-decoration: line-through;
  }
}
</style>
