<template>
  <div class="category">
    <breadcrumbs :links="breadcrumbs" />
    <h1 class="category__title">დედა და ბავშვი</h1>

    <div class="category__brands">
      <CategoryBox
        title="ბავშვის კვება"
        subtitle="480+ პროდუქცია"
        image="/test/image1.png"
      />
      <CategoryBox
        title="ბავშვის კვება"
        subtitle="480+ პროდუქცია"
        image="/test/image1.png"
      />
      <CategoryBox
        title="ბავშვის კვება"
        subtitle="480+ პროდუქცია"
        image="/test/image1.png"
      />
      <CategoryBox
        title="ბავშვის კვება"
        subtitle="480+ პროდუქცია"
        image="/test/image1.png"
      />
      <CategoryBox
        title="ბავშვის კვება"
        subtitle="480+ პროდუქცია"
        image="/test/image1.png"
      />
      <CategoryBox
        title="ბავშვის კვება"
        subtitle="480+ პროდუქცია"
        image="/test/image1.png"
      />
    </div>

    <div class="category__banners">
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
    </div>

    <div class="category__content">
      <div class="category__filter">
        <div class="category__filter-header">
          ფილტრი
        </div>

        <div class="category__filter-body">
          <div class="category__filter-item">
            <div class="category__filter-title">კატეგორიები</div>
            <ul>
              <li class="parent">
                <a href="#">
                  <span class="arrow">
                    <Icon
                      name="chevron-left"
                      :width="20"
                      :height="20"
                    />
                  </span>
                  დედა და ბავშვი
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="arrow">
                    <Icon
                      name="chevron-right"
                      :width="20"
                      :height="20"
                    />
                  </span>
                  ბავშვის კვება
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="arrow">
                    <Icon
                      name="chevron-right"
                      :width="20"
                      :height="20"
                    />
                  </span>
                  ბავშვის კვება
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="arrow">
                    <Icon
                      name="chevron-right"
                      :width="20"
                      :height="20"
                    />
                  </span>
                  ბავშვის კვება
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="arrow">
                    <Icon
                      name="chevron-right"
                      :width="20"
                      :height="20"
                    />
                  </span>
                  ბავშვის კვება
                </a>
              </li>
            </ul>
          </div>

          <div class="category__filter-item category__filter-item--price">
            <div class="category__filter-title">ფასი</div>

            <div class="category__filter-item__grid">
              <Input label="მინ" />
              <Input label="მაქს" />
            </div>
          </div>

          <div class="category__filter-item">
            <div class="category__filter-title">ბრენდები</div>
            <CheckBox />
            <CheckBox />
            <CheckBox />
            <CheckBox />
            <CheckBox />
          </div>

          <div class="category__filter-item">
            <div class="category__filter-title">ბრენდები</div>
            <CheckBox />
            <CheckBox />
            <CheckBox />
          </div>
        </div>
      </div>
      <div class="category__products">
        <div class="category__products-header">
          <div class="category__text">2 840 პროდუქტი</div>

          <div class="category__products-action">
            <ul>
              <li>
                <DropdownButton>20</DropdownButton>
              </li>
              <li>
                <DropdownButton>პოპულარობით</DropdownButton>
              </li>
            </ul>
          </div>
        </div>
        <div class="category__products-body">
          <Product
            v-for="product in 20"
            :key="productGetters.getSlug(product)"
            title="Esthederm - ესტედერმი კრემი ნაოჭების და სხვა ჭრილების გამოსატყნავი ექსტრა სპეც სოუსით"
            price="37.40"
            special-price="29.40"
            image="/test/image4.png"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import findDeep from 'deepdash/findDeep';
import LazyHydrate from 'vue-lazy-hydration';
import {
  SfSidebar,
  SfButton,
  SfList,
  SfIcon,
  SfHeading,
  SfMenuItem,
  SfFilter,
  SfRadio,
  SfProductCard,
  SfProductCardHorizontal,
  SfPagination,
  SfAccordion,
  SfSelect,
  SfBreadcrumbs,
  SfLoader,
  SfColor,
  SfProperty,
} from '@storefront-ui/vue';
import Breadcrumbs from '~/components/Base/Breadcrumbs';
import Product from '../components/Product';
import CategoryBox from '../components/Base/CategoryBox.vue';
import Banner from '../components/Banner.vue';
import DropdownButton from '../components/Base/DropdownButton';
import Input from '../components/Base/Input';
import CheckBox from '../components/Base/CheckBox';
import Icon from '../components/Icon';
import {
  ref,
  computed,
  defineComponent,
} from '@vue/composition-api';
import {
  useCart,
  useWishlist,
  productGetters,
  useFacet,
  useCategory,
  categoryGetters,
  facetGetters,
  useUrlResolver,
} from '@vue-storefront/magento';
import { onSSR, useVSFContext } from '@vue-storefront/core';
import { useUiHelpers, useUiState } from '~/composables';
import { useVueRouter } from '~/helpers/hooks/useVueRouter';

// TODO(addToCart qty, horizontal): https://github.com/vuestorefront/storefront-ui/issues/1606
export default defineComponent({
  components: {
    SfButton,
    SfSidebar,
    SfIcon,
    SfList,
    SfFilter,
    SfRadio,
    SfProductCard,
    SfProductCardHorizontal,
    SfPagination,
    SfMenuItem,
    SfAccordion,
    SfSelect,
    SfBreadcrumbs,
    SfLoader,
    SfColor,
    SfHeading,
    SfProperty,
    LazyHydrate,
    Breadcrumbs,
    Product,
    CategoryBox,
    Banner,
    DropdownButton,
    Input,
    CheckBox,
    Icon
  },
  transition: 'fade',
  setup() {
    const {
      router,
      route,
    } = useVueRouter();
    const { path } = route;
    const th = useUiHelpers();
    const uiState = useUiState();
    const { $magento: { config: magentoConfig } } = useVSFContext();
    const {
      addItem: addItemToCartBase,
      isInCart,
    } = useCart();
    const {
      addItem: addItemToWishlistBase,
      isInWishlist,
      removeItem: removeItemFromWishlist,
    } = useWishlist();
    const {
      result,
      search,
      loading,
    } = useFacet(`facetId:${path}`);
    const {
      changeFilters,
      isFacetColor,
    } = useUiHelpers();
    const { toggleFilterSidebar } = useUiState();
    const {
      categories,
      search: categoriesSearch,
      loading: categoriesLoading,
    } = useCategory(`categoryList:${path}`);

    const {
      search: routeSearch,
      result: routeData,
    } = useUrlResolver(`router:${path}`);

    const selectedFilters = ref((magentoConfig.facets.available).reduce((acc, curr) => ({
      ...acc,
      [curr]: (curr === 'price' ? '' : []),
    }), {}));

    const products = computed(() => facetGetters
      .getProducts(result.value)
      .map((product) => ({
        ...product,
        isInWishlist: isInWishlist({ product }),
      })));

    const categoryTree = computed(() => categoryGetters.getCategoryTree(
      categories.value?.[0],
      routeData.value.entity_uid,
      true,
    ));
    // const breadcrumbs = computed(() => facetGetters.getBreadcrumbs(result.value));
    const breadcrumbs = computed(() => {
      return [
        { label: 'მთავარი', url: '/' },
        { label: 'პროდუქცია', url: '/' },
        { label: 'დედა და ბავშვი', url: '/' }
      ]
    });

    const sortBy = computed(() => facetGetters.getSortOptions(result.value));
    const facets = computed(() => facetGetters.getGrouped(result.value, magentoConfig.facets.available));

    const pagination = computed(() => facetGetters.getPagination(result.value));

    const activeCategory = computed(() => {
      const items = categoryTree.value?.items;

      if (!items) {
        return '';
      }

      const category = items.find((cat) => cat.isCurrent || cat.items.find((c) => c.isCurrent));

      return category?.label || items[0]?.label;
    });

    const activeCategoryUid = (categoryUid) => {
      const items = categoryTree.value?.items;

      if (!items) {
        return '';
      }

      const categoryDeep = findDeep(
        categoryTree.value?.items,
        (value, key, parentValue, _deepCtx) => {
          const hasUid = key === '0' && value && Array.isArray(parentValue);

          return hasUid ? value === categoryUid : false;
        },
      );

      const categoryUidResult = categoryDeep?.parent.length === 1
        ? categoryDeep?.parent[0]
        : categoryDeep?.parent;

      return categoryUidResult || items[0]?.uid;
    };

    const isFilterSelected = (facet, option) => {
      if (facet.id === 'price') {
        return selectedFilters.value[facet.id];
      }
      return (selectedFilters.value[facet.id] || []).includes(option.value);
    };

    const selectFilter = (facet, option) => {
      if (facet.id === 'price') {
        selectedFilters.value[facet.id] = option.value;
        return;
      }

      if (!selectedFilters.value[facet.id]) {
        selectedFilters.value[facet.id] = [];
      }

      if (selectedFilters.value[facet.id].find((f) => f === option.value)) {
        selectedFilters.value[facet.id] = selectedFilters.value[
          facet.id
        ].filter((f) => f !== option.value);

        return;
      }

      selectedFilters.value[facet.id].push(option.value);
    };

    const applyFilters = (filters) => {
      toggleFilterSidebar();

      if (filters) {
        selectedFilters.value = filters;
      }

      changeFilters(selectedFilters.value);
    };

    const addItemToCart = async ({
      product,
      quantity,
    }) => {
      // eslint-disable-next-line no-underscore-dangle
      const productType = product.__typename;

      switch (productType) {
        case 'SimpleProduct':
          await addItemToCartBase({
            product,
            quantity,
          });
          break;
        case 'BundleProduct':
        case 'ConfigurableProduct':
          await router.push(`/p/${productGetters.getProductSku(product)}${productGetters.getSlug(
            product,
            product.categories[0],
          )}`);
          break;
        default:
          throw new Error(`Product Type ${productType} not supported in add to cart yet`);
      }
    };

    const addItemToWishlist = async (product) => {
      await (
        isInWishlist({ product })
          ? removeItemFromWishlist({ product })
          : addItemToWishlistBase({ product })
      );
    };

    onSSR(async () => {
      await Promise.all([
        routeSearch(path),
        categoriesSearch({
          pageSize: 100,
        }),
      ]);

      await search({
        ...th.getFacetsFromURL(),
        categoryId: activeCategoryUid(routeData.value.entity_uid),
      });

      if (facets.value.length > 0) {
        selectedFilters.value = facets.value.reduce(
          (prev, curr) => (curr.id === 'price'
            ? {
              ...prev,
              [curr.id]: curr.options.find((o) => o.selected)?.value,
            }
            : {
              ...prev,
              [curr.id]: curr.options
                .filter((o) => o.selected)
                .map((o) => o.value),
            }),
          {},
        );
      }
    });

    return {
      ...uiState,
      activeCategory,
      addItemToCart,
      addItemToWishlist,
      applyFilters,
      breadcrumbs,
      categories,
      categoriesLoading,
      categoryTree,
      facets,
      isFacetColor,
      isFilterSelected,
      isInCart,
      isInWishlist,
      loading,
      pagination,
      productGetters,
      products,
      selectedFilters,
      selectFilter,
      sortBy,
      th,
    };
  },
});
</script>

<style lang="scss" scoped>
.category {
  &__title {
    @include headline-3;
    font-weight: bold;
    color: #231444;
    margin: toRem(16) 0;
  }

  &__brands {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    gap: toRem(16);
    padding-top: toRem(8);
  }

  &__banners {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: toRem(16);
    margin: toRem(24) 0;
  }

  &__content {
    display: grid;
    grid-template-columns: toRem(366) auto;
    column-gap: toRem(18);
  }

  &__filter {
    &-header {
      display: flex;
      justify-content: space-between;
      height: toRem(52);
      font-weight: bold;
    }

    &-body {
      background: white;
      box-shadow: 0 toRem(1) toRem(2) #EDEBF0;
      border-radius: toRem(8);
    }

    &-item {
      border-bottom: toRem(1) solid #F2F3F8;
      padding: toRem(20) toRem(24);

      &:last-child {
        border: none;
      }

      ul {
        margin: 0;
        padding: 0;
        list-style: none;

        li {
          &.parent {
            a {
              color: #253988;
              font-weight: bold;
              padding-top: 0;

              .arrow {
                top: 0;
                left: toRem(-4);
              }
            }
          }

          a {
            position: relative;
            display: flex;
            align-items: center;
            color: #231444;
            padding: toRem(8) toRem(32);

            .arrow {
              position: absolute;
              top: toRem(6);
              right: toRem(-4);
              height: toRem(18);
            }
          }
        }
      }

      .checkbox {
        margin-bottom: toRem(16);

        &:last-child {
          margin-bottom: 0;
        }
      }

      &--price {
        .category__filter-item__grid {
          display: grid;
          grid-template-columns: repeat(2, 1fr);
          gap: toRem(20);
        }
      }
    }

    &-title {
      font-size: toRem(12);
      font-weight: bold;
      color: #606A92;
      margin-bottom: toRem(23);
    }
  }

  &__products {
    &-header {
      display: flex;
      justify-content: space-between;
      height: toRem(52);

      ul {
        list-style: none;
        margin: 0;
        padding: 0;

        li {
          display: inline-block;
          padding: 0 toRem(6);

          &:last-child {
            padding-right: 0;
          }
        }
      }
    }

    &-body {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: toRem(16);
    }
  }
}
</style>
