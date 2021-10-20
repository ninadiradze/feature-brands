<template>
  <div class="category-box">
    <div class="category-box__image">
      <img :src="image" :alt="title" />
    </div>
    <div class="category-box__text">
      <div class="category-box__title">
        {{ title }}
      </div>
      <div v-if="subtitle" class="category-box__subtitle">
        {{ subtitle }}
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    image: {
      type: String,
      required: true,
    },
    title: {
      type: String,
      required: true,
    },
    subtitle: {
      type: [String, null],
      default: null,
    },
  },
};
</script>

<style scoped lang="scss">
@import '~/assets/styles'; // TODO: remove

.category-box {
  display: flex;
  align-items: center;
  box-shadow: 0 1px 2px #edebf0;
  border-radius: 0.5rem;
  padding: 0.5rem;
  background-color: $white;

  &__image {
    display: flex;
    margin-right: 0.5rem;

    img {
      width: 57px;
      height: 57px;
    }
  }

  &__text {
    display: flex;
    flex-direction: column;
    justify-content: center;
  }

  &__title {
    @include subtitle-7;
  }

  &__subtitle {
    @include subtitle-7;
    color: $text-gray-regular;
    margin-top: 0.125rem;
  }
}
</style>
