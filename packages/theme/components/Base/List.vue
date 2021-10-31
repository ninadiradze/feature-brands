<template>
  <div>
    <template v-if="title">
      <h5>{{ title }}</h5>
    </template>

    <ul class="list">
      <list-item
        v-for="(item, index) in items"
        :key="index"
        :label="item.label"
        :type="item.type"
      />
    </ul>
  </div>
</template>

<script>
import ListItem from './ListItem';

export default {
  components: {
    ListItem
  },

  props: {
    title: {
      type: [String, null],
      default: null,
    },

    items: {
      type: Array,
      required: true,
    }
  }
}
</script>

<style scoped lang="scss">
h5 {
  font-size: toRem(12);
  font-weight: bold;
  color: #606A92;
  margin: 0 0 toRem(10);
}

.list {
  margin: 0;
  padding: 0;
  list-style-type: none;
}
</style>
