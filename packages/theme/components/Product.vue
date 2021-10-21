<template>
  <div class="product">
    <div class="product__image-wrapper">
      <img :src="image" :alt="title" />
      <div class="product__actions">
        <Button icon="System/Eye-Outline" icon-only />
        <Button icon="System/Heart-Outline" icon-only />
        <Button icon="System/Bag-Outline" icon-only />
      </div>
      <div class="product__countdown">
        <Label color="pink" transparent size="sm">[TODO: COUNTDOWN HERE]</Label>
      </div>
    </div>
    <div class="product__title">
      {{ title }}
    </div>
    <div class="product__price-wrapper">
      <template v-if="specialPrice && price !== specialPrice">
        <div class="product__price product__price--special">
          {{ specialPrice }}
        </div>
        <div class="product__price product__price--discounted">
          {{ price }}
        </div>
      </template>
      <template v-else>
        <div class="product__price product__price--regular">
          {{ price }}
        </div>
      </template>
    </div>
    <div class="product__labels">
      <Label color="pink">-70%</Label>
    </div>
  </div>
</template>

<script>
import Button from './Base/Button.vue';
import Label from './Base/Label.vue';

export default {
  name: 'Product',
  components: { Label, Button },
  props: {
    title: {
      type: String,
      required: true,
    },
    price: {
      type: String,
      required: true,
    },
    specialPrice: {
      type: [String, null],
      required: false,
      default: null,
    },
    image: {
      type: String,
      required: true,
    },
    countdownTo: {
      type: [String, null],
      default: null,
    },
  },
};
</script>

<style scoped lang="scss">
@import '~/assets/styles'; // TODO: remove

.product {
  $product: &;
  border-radius: 0.5rem;
  background-color: $white;
  padding: 1.5rem;
  box-shadow: 0 1px 2px #edebf0;
  position: relative;

  &__image-wrapper {
    position: relative;

    img {
      max-width: 100%;
      transition: opacity $transition-duration ease-in-out;

      #{$product}:hover & {
        opacity: 0.5;
      }
    }
  }

  &__title {
    @include subtitle-7;
    color: $text-blue;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }

  &__price-wrapper {
    display: flex;
    margin-top: 0.75rem;
  }

  &__price {
    display: inline-block;

    &--regular {
      @include headline-6;
      color: $text-black;
    }
    &--discounted {
      @include subtitle-6;
      color: $text-gray-regular;
      text-decoration: line-through;
      margin-left: 0.5rem;
    }
    &--special {
      @include headline-6;
      color: $text-pink;
    }
  }

  &__actions {
    display: flex;
    justify-content: center;
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0.75rem;
    opacity: 0;
    transition: opacity $transition-duration ease-in-out;

    #{$product}:hover & {
      opacity: 1;
    }

    :not(:last-child) {
      margin-right: 0.5rem;
    }
  }

  &__labels {
    position: absolute;
    top: 1.5rem;
    right: 1.5rem;
  }

  &__countdown {
    position: absolute;
    left: 0;
    bottom: 0.75rem;
    transition: opacity $transition-duration ease-in-out;

    #{$product}:hover & {
      opacity: 0;
      visibility: hidden;
    }
  }
}
</style>
