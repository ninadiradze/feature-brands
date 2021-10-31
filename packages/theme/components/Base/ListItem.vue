<template>
  <li class="list__item">
    <mark-text
      :label="label"
      :type="type"
    />
  </li>
</template>

<script>
import MarkText from '~/components/Base/MarkText';

export default {
  components: {
    MarkText
  },

  props: {
    label: {
      type: [String, null],
      default: null,
    },

    type: {
      type: Number,
      default: 1,
    }
  }
}
</script>

<style scoped lang="scss">
.list__item {
  font-weight: normal;
  font-size: toRem(14);
  color: #231444;
  padding: toRem(2) 0;
}
</style>
