<template>
  <div class="hero-carousel">
    <swiper :options="swiperOption">
      <swiper-slide
        v-for="(slide, index) in slides"
        :key="index"
      >
        <img
          :src="slide.image"
          class="hero-carousel__image"
          alt="#"
        />
      </swiper-slide>
    </swiper>
  </div>
</template>

<script>
import { Swiper, SwiperSlide } from 'vue-awesome-swiper';
import 'swiper/swiper-bundle.css';

export default {
  components: {
    Swiper,
    SwiperSlide,
  },
  props: {
    slides: {
      type: Array,
      default: () => [],
    },
  },
  data() {
    return {
      swiperOption: {},
    }
  },
}
</script>

<style scoped lang="scss">
  .hero-carousel {
    height: toRem(364);
    .swiper {
      &-container {
        height: 100%;
        overflow: hidden;
      }
    }
    &__image {
      width: 100%;
      height: 100%;
      object-fit: cover;
      border-radius: toRem(8);
    }
  }
</style>
