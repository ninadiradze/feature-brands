<template>
  <div class="offer">
    <div class="offer__image">
      <img :src="image" :alt="title" />
    </div>
    <div class="offer__title">
      {{ title }}
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
  },
};
</script>

<style scoped lang="scss">
@import '~/assets/styles'; // TODO: remove

.offer {
  box-shadow: 0 1px 2px #edebf0;
  background-color: $white;
  padding: 1rem;
  border-radius: 0.5rem;

  &__image {
    overflow: hidden;
    border-radius: 0.75rem;

    img {
      max-width: 100%;
      max-height: 100%;
    }
  }

  &__title {
    margin-top: 1rem;
    @include subtitle-7;
  }
}
</style>
