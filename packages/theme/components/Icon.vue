<template>
  <svg
    :width="width"
    :height="height"
    viewBox="0 0 24 24"
    fill="none"
    xmlns="http://www.w3.org/2000/svg"
    preserveAspectRatio="none"
  >
    <component :is="icon" />
  </svg>
</template>

<script>
import * as components from './Icons';
import { strCapitalizeFirstLetter } from '../helpers/string.js';

export default {
  components: {
    ...components
  },
  props: {
    name: {
      type: String,
      required: true,
    },
    width: {
      type: [Number, null],
      default: 24,
    },
    height: {
      type: [Number, null],
      default: 24,
    },
  },

  computed: {
    /**
     *
     * @returns {string}
     */
    icon() {
      return strCapitalizeFirstLetter(this.name);
    }
  }
}
</script>

<style scoped></style>
