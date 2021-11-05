<template>
  <Button
    variant="light"
    size="sm"
    class="dropdown-button"
  >
    <slot />

    <span class="arrow">
      <Icon
        name="chevron-down"
        :width="20"
        :height="20"
      />
    </span>
  </Button>
</template>

<script>
import Button from './Button';
import Icon from '../Icon';

export default {
  components: {
    Button,
    Icon
  }
}
</script>

<style lang="scss" scoped>
.dropdown-button {
  display: flex;
  align-items: center;

  span {
    display: inline-block;
    color: #646D8C;
    height: toRem(21);
    padding-left: toRem(8);
  }
}
</style>
