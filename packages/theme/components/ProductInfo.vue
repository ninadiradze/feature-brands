<template>
  <div class="product__info">
    <h2 class="product__info-title">Bionnex - ბიონექსი მზისგან დამცავი SPF100 2288</h2>
    <div class="product__info-sku">#29088_1992</div>

    <h5>მახასიათებლები</h5>
    <table>
      <tbody>
        <tr>
          <td>რაოდენობა და ფორმა</td>
          <td>1 შეკვრა</td>
        </tr>
        <tr>
          <td>მოქმედი ნივთიერება</td>
          <td>Paracetam + Phenyleph</td>
        </tr>
        <tr>
          <td>მიღების ფორმა</td>
          <td>ორალური</td>
        </tr>
        <tr>
          <td>დოზა</td>
          <td>2gr</td>
        </tr>
        <tr>
          <td>მოცულობა</td>
          <td>200გ</td>
        </tr>
        <tr>
          <td>რაოდენობა და ფორმა</td>
          <td>1 შეკვრა</td>
        </tr>
        <tr>
          <td>მოქმედი ნივთიერება</td>
          <td>Paracetam + Phenyleph</td>
        </tr>
        <tr>
          <td>მიღების ფორმა</td>
          <td>ორალური</td>
        </tr>
        <tr>
          <td>რაოდენობა და ფორმა</td>
          <td>1 შეკვრა</td>
        </tr>
      </tbody>
    </table>

    <h5>მოკლე აღწერა</h5>
    <p>
      ჩვენებები: გრიპისა და გაციების ძირითადი სიმპტომების კუპირება, მომატებული ტემპერატურა, თავის ტკივილი, კანკალი.
      პრეპარატს ახასიათებს ანთების საწინააღმდეგო, ადგილობრივი ტკივილგამაყუჩებელი და ანტისეპტიკური მოქმედება
    </p>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped lang="scss">
.product__info {
  &-title {
    @include headline-3;
    color: $black-purple-regular;
    margin-bottom: toRem(6);
  }

  &-sku {
    font-size: toRem(14);
    font-weight: 600;
    color: #646D8C;
  }

  h5 {
    font-weight: normal;
    margin-bottom: toRem(13);
  }

  p {
    font-size: toRem(14);
    line-height: toRem(24);
    color: #231444;
  }

  table {
    width: 100%;
    background-color: white;
    border-collapse: collapse;
    border: 1px solid #E8E9EE;
    box-shadow: 0 1px 2px #EFF0F3;
    border-radius: 8px;
  }

  table td {
    font-size: toRem(14);
    color: $black-purple-regular;
    padding: toRem(12) toRem(13);
  }

  table tr:nth-child(even){background-color: #F7F8F9;}

  table tr:hover {background-color: #F7F8F9;}
}
</style>
