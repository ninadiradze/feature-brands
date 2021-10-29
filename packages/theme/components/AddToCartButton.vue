<template>
  <Button>
    {{ label }}
  </Button>
</template>

<script>
import Button from '~/components/Base/Button';

export default {
  components: {
    Button
  },

  props: {
    label: {
      type: [String, null],
      default: null,
    }
  }
}
</script>

<style scoped lang="scss">

</style>
