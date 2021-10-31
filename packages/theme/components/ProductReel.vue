<template>
  <div class="product-reel" :class="classes">
    <template v-if="image">
      <img :src="image" class="product-reel__image" />
    </template>

    <div class="product-reel__body">
      <swiper :options="swiperOption">
        <swiper-slide
          v-for="slide in 16"
          :key="slide"
        >
          <Product
            title="Esthederm - ესტედერმი კრემი ნაოჭების და სხვა ჭრილების გამოსატყნავი ექსტრა სპეც სოუსით"
            price="37.40"
            special-price="29.40"
            image="/test/image4.png"
          />
        </swiper-slide>
      </swiper>
    </div>
  </div>
</template>

<script>
import { Swiper, SwiperSlide } from 'vue-awesome-swiper';
import 'swiper/swiper-bundle.css';
import Product from '~/components/Product';

export default {
  components: {
    Swiper,
    SwiperSlide,
    Product,
  },
  props: {
    color: {
      type: [String, null],
      default: null,
    },
    image: {
      type: [String, null],
      default: null,
    },
    sliderPerView: {
      type: [Number, null],
      default: 5.32,
    },
    slidesPerColumn: {
      type: [Number, null],
      default: 1,
    },
    row: {
      type: [Number, null],
      default: null,
    },
    hasFade: {
      type: Boolean,
      default: true,
    }
  },
  data() {
    return {
      swiperOption: {
        slidesPerView: this.sliderPerView,
        slidesPerColumn: this.slidesPerColumn,
        slidesPerColumnFill: 'row',
        spaceBetween: 16,
      },
    }
  },
  computed: {
    classes() {
      return [
        {
          'product-reel--coloured': this.color,
          [`product-reel--${this.color}`]: this.color,
          'has-fade': this.hasFade,
        },
      ];
    },
  },
};
</script>

<style scoped lang="scss">
.product-reel {
  position: relative;
  &--green {
    background: linear-gradient(82.84deg, rgba($green-dark, .5) 0%, rgba($green-bright, .5) 100%);
  }
  &--pink {
    background: linear-gradient(82.84deg, rgba($pink-dark, .5) 0%, rgba($pink-bright, .5) 100%);
  }
  &--yellow {
    background: linear-gradient(82.84deg, rgba($yellow-dark, .5) 0%, rgba($yellow-regular, .5) 100%);
  }
  &__body {
    position: relative;
  }
  &__image {
    position: absolute;
    bottom: 0;
    left: 0;
    border-radius: toRem(12);
  }
  .swiper {
    &-container {
      overflow: hidden;
    }
  }
  &--coloured {
    padding: toRem(20) toRem(96) toRem(20) toRem(288);
    border-radius: toRem(12);
    .product {
      box-shadow: 0 toRem(1) toRem(2) rgba(0, 0, 0, .08);
    }
  }
  &.has-fade {
    &::after {
      content: '';
      display: block;
      position: absolute;
      top: 0;
      right: 0;
      width: toRem(81);
      height: 100%;
      background: linear-gradient(270deg, $gray-light-1 0%, rgba(247, 248, 249, 0) 100%);
      z-index: 2;
    }
  }
}
</style>
