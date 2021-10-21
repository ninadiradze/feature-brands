<template>
  <div class="brand">
    <img :src="image" :alt="alt" />
  </div>
</template>

<script>
export default {
  props: {
    image: {
      type: String,
      required: true,
    },
    alt: {
      type: String,
      default: '',
    },
  },
};
</script>

<style scoped lang="scss">
@import '~/assets/styles'; // TODO: remove

.brand {
  padding: 1.25rem;
  display: flex;
  align-items: center;
  justify-content: center;
  height: 3.75rem;
  box-shadow: 0 1px 2px #edebf0;
  border-radius: 0.5rem;
  background-color: $white;

  img {
    max-height: 100%;
    max-width: 100%;
  }
}
</style>
