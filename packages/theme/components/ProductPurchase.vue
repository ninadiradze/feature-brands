<template>
  <Card class="product__purchase">
    <template v-slot:header>
      <ul>
        <li>შეკვრა</li>
        <li>კაფსულა</li>
      </ul>
    </template>
    <product-price />
    <input-number
      label="კაფსულა"
      :min="1"
      :max="10"
      class="product__purchase-spinner"
    />
    <add-to-cart-button
      class="product__purchase-button product__purchase-button--cart"
      label="კალათაში"
    />
    <purchase-button
      class="product__purchase-button product__purchase-button--purchase"
      label="ყიდვა"
    />
    <Divider class="product__purchase-divider" />

    <List
      title="მიწოდების მეთოდები"
      :items="deliveryMethods"
    />
  </Card>
</template>

<script>
import Card from '~/components/Base/Card';
import Button from '~/components/Base/Button';
import InputNumber from '~/components/Base/InputNumber';
import Divider from '~/components/Base/Divider';
import List from '~/components/Base/List';
import ProductPrice from '~/components/ProductPrice';
import AddToCartButton from '~/components/AddToCartButton';
import PurchaseButton from '~/components/PurchaseButton';

export default {
  components: {
    Card,
    Button,
    InputNumber,
    Divider,
    List,
    ProductPrice,
    AddToCartButton,
    PurchaseButton
  },

  data() {
    return {
      deliveryMethods: [
        {
          label: '1 სააათიანი ექსპრესი',
          icon: 1
        },
        {
          label: 'სტანდარტული მიწოდება (1დღე)',
          type: 1
        },
        {
          label: 'მიწოდება 5 სამუშაო დღეში',
          type: 0
        }
      ]
    }
  }
}
</script>

<style lang="scss">
.product__purchase {
  .product__price-countdown {
    padding-top: toRem(4);
  }

  .product__purchase-spinner {
    margin-top: toRem(28);
  }

  .product__purchase-button {
    width: 100%;

    &--cart,
    &--purchase {
      margin-top: toRem(12);
    }
  }

  &-divider {
    margin: toRem(24) 0;
  }

  .card__header {
    ul {
      display: flex;
      margin: 0;
      padding: 0;
      list-style-type: none;

      li {
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: toRem(14);
        font-weight: bold;
        color: #253988;
        width: 50%;
        height: toRem(55);
        border-bottom: toRem(1) solid #F2F3F8;
        cursor: pointer;

        &:last-child {
          border-color: #253988;
        }
      }
    }
  }
}
</style>
