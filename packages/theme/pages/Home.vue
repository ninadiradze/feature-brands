<template>
  <div id="home">
    <HeroCarousel
      :slides="[
        { image: '/test/hero1.jpeg' },
        { image: '/test/hero1.jpeg' },
        { image: '/test/hero1.jpeg' },
      ]"
    />
    <div
      style="display: grid; grid-gap: 20px; grid-template-columns: repeat(3, 1fr); margin-top: 20px"
    >
      <Banner
        color="green"
        title="აფთიაქი"
        subtitle="8500+ პროდუქცია"
        image="/test/image1.png"
      />
      <Banner
        color="yellow"
        title="ოჯახზე ზრუნვა"
        subtitle="960+ პროდუქცია"
        image="/test/image2.png"
      />
      <Banner
        color="pink"
        title="სილამაზე"
        subtitle="9000+ პროდუქცია"
        image="/test/image3.png"
      />
    </div>
    <SectionHeader
      heading="ყველაზე პოპულარული"
      show-see-more
      :categories="['რუჯი და მზისგან დაცვა', 'მედიკამენტები', 'დედა და ბავშვი']"
      icon="System/Star-Outline"
      icon-background="yellow"
      style="margin-top: 20px"
    />
    <ProductReel style="margin-top: 20px" />
    <SectionHeader
      heading="იზრუნე სილამაზეზე"
      show-see-more
      :categories="['რუჯი და მზისგან დაცვა', 'მედიკამენტები', 'დედა და ბავშვი']"
      style="margin-top: 20px"
    />
    <ProductReel
      color="green"
      :slider-per-view="4"
      image="/test/human1.png"
      style="margin-top: 20px"
    />
    <SectionHeader
      heading="იზრუნე სილამაზეზე"
      show-see-more
      :categories="['რუჯი და მზისგან დაცვა', 'მედიკამენტები', 'დედა და ბავშვი']"
      style="margin-top: 20px"
    />
    <ProductReel
      color="pink"
      :slider-per-view="4"
      :slides-per-column="2"
      image="/test/human2.png"
      style="margin-top: 20px"
    />
    <SectionHeader
      heading="იზრუნე სილამაზეზე"
      show-see-more
      :categories="['რუჯი და მზისგან დაცვა', 'მედიკამენტები', 'დედა და ბავშვი']"
      style="margin-top: 20px"
    />
    <ProductReel
      color="yellow"
      :slider-per-view="4"
      image="/test/human3.png"
      style="margin-top: 20px"
    />
    <div
      style="displayØ: grid; grid-gap: 20px; grid-template-columns: repeat(4, 1fr); margin-top: 20px;"
    >
      <Brand image="/homepage/apple.png" alt="Apple Logo" />
    </div>
    <Breadcrumbs
      style="margin-top: 20px;"
      :links="[
        { label: 'მთავარი', url: '/' },
        { label: 'დედა და ბავშვი', url: '/mother-and-child' },
        { label: 'სათამაშოები', url: '/mother-and-child/toys' },
      ]"
    />
    <div
      style="display: grid; grid-gap: 20px; grid-template-columns: repeat(4, 1fr); margin-top: 20px;"
    >
      <CategoryBox
        title="ბავშვის კვება"
        subtitle="480+ პროდუქცია"
        image="/test/image1.png"
      />
    </div>
    <div
      style="display: grid; grid-gap: 20px; grid-template-columns: repeat(4, 1fr); margin-top: 20px;"
    >
      <Offer
        image="/homepage/bannerG.webp"
        title="50% ფასდაკლება Sebamed-ის საბავშვო ხაზის ყველა პროდუქტზე"
      />
    </div>
  </div>
</template>
<script lang="ts" type="module">
import { defineComponent } from '@vue/composition-api';
import SectionHeader from '../components/SectionHeader.vue';
import Banner from '../components/Banner.vue';
import ProductReel from '../components/ProductReel.vue';
import Brand from '../components/Brand.vue';
import Breadcrumbs from '../components/Base/Breadcrumbs.vue';
import CategoryBox from '../components/Base/CategoryBox.vue';
import Offer from '../components/Base/Offer.vue';
import HeroCarousel from '../components/HeroCarousel.vue';

export default defineComponent({
  name: 'Home',
  components: {
    Offer,
    CategoryBox,
    Breadcrumbs,
    Brand,
    ProductReel,
    Banner,
    SectionHeader,
    HeroCarousel,
  },
  data() {
    return {};
  },
});
</script>

<style lang="scss" scoped></style>
