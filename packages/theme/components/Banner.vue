<template>
  <div class="banner" :class="classes">
    <div class="banner__title">
      {{ title }}
    </div>
    <div class="banner__subtitle">
      {{ subtitle }}
    </div>
    <div
      class="banner__image"
      :style="{ backgroundImage: `url(${image})` }"
    ></div>
  </div>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      required: true,
    },
    subtitle: {
      type: String,
      required: true,
    },
    image: {
      type: String,
      required: true,
    },
    color: {
      type: String,
      required: true,
    },
  },
  computed: {
    classes() {
      return `banner--${this.color}`;
    },
  },
};
</script>

<style scoped lang="scss">
@import '~/assets/styles'; // TODO: remove

.banner {
  padding: 1.875rem;
  border-radius: 0.5rem;
  position: relative;

  &--blue {
    background-color: $blue-regular;
  }
  &--green {
    background-color: $green-regular;
  }
  &--yellow {
    background-color: $yellow-regular;
  }
  &--pink {
    background-color: $pink-regular;
  }

  &__title {
    @include headline-4;
    color: $text-white;
  }
  &__subtitle {
    @include subtitle-7;
    color: $text-white;
    opacity: 0.7;
    margin-top: 0.25rem;
  }
  &__image {
    width: 5rem;
    height: 5rem;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    right: 2.5rem;
    background-size: contain;
    background-position: center;
    background-repeat: no-repeat;
  }
}
</style>
