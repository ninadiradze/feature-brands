<template>
  <div class="product-reel">
    <Product
      title="Esthederm - ესტედერმი კრემი ნაოჭების და სხვა ჭრილების გამოსატყნავი ექსტრა სპეც სოუსით"
      price="37.40"
      special-price="29.40"
      image="/test/image4.png"
    />
    <Product
      title="Esthederm - ესტედერმი კრემი ნაოჭების და სხვა ჭრილების გამოსატყნავი ექსტრა სპეც სოუსით"
      price="37.40"
      image="/test/image4.png"
    />
    <Product
      title="Esthederm - ესტედერმი კრემი ნაოჭების და სხვა ჭრილების გამოსატყნავი ექსტრა სპეც სოუსით"
      price="37.40"
      special-price="29.40"
      image="/test/image4.png"
    />
    <Product
      title="Esthederm - ესტედერმი კრემი ნაოჭების და სხვა ჭრილების გამოსატყნავი ექსტრა სპეც სოუსით"
      price="37.40"
      special-price="29.40"
      image="/test/image4.png"
    />
  </div>
</template>

<script>
import Product from '~/components/Product';

export default {
  components: {
    Product,
  },
};
</script>

<style scoped lang="scss">
.product-reel {
  display: grid;
  grid-gap: 20px;
  grid-template-columns: repeat(4, minmax(0, 1fr));
}
</style>
