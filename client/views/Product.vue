<template>
  <div class="product-wrapper">
    <div v-if="isLoading">
      Loading...
      <!-- <loading-indicator :progress="20"></loading-indicator> -->
    </div>
    <div v-else>
      <div v-if="product" :class="componentClass">
        <div class="header">
          <!-- <router-link :to="{ name: 'home' }" class="logo-rect"><img src="/images/logo-rect.png" ></router-link> -->
          <a class="logo-rect"><img src="/images/logo-rect.png" ></a>
          <br><br>
          <a href="http://www.periodicaudio.com/PAIJournal/category/iems/" target="_blank" rel="noopener">Research</a><br><a href="#">Cart</a>
        </div>
        <div class="spec-cell left">
          <img :src="product.images.frequencyResponse" alt="frequencyResponse">
          <br><br><br>
          <img :src="product.images.cumulativeSpectralDecay" alt="cumulativeSpectralDecay">
        </div>
        <div class="spec-cell right">
          <img :src="product.images.spec" class="spec" alt="spec">
          <div class="price">
            <span class="msrp">MSRP $99</span>
            <span class="add-to-cart">add to cart</span>
          </div>
          <div class="product-tile-nav">
            <router-link :to="{ name: 'product', params: { slug: 'magnesium' }}"><img src="/images/elements/mg.png" class="element-card" alt=""></router-link>
            <router-link :to="{ name: 'product', params: { slug: 'titanium' }}"><img src="/images/elements/ti.png" class="element-card" alt=""></router-link>
            <router-link :to="{ name: 'product', params: { slug: 'beryllium' }}"><img src="/images/elements/be.png" class="element-card" alt=""></router-link>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

const _ = require('lodash')
const PRODUCTS = require('../data/products')

export default {
  name: 'product',
  components: {

  },
  props: {

  },
  computed: {
    componentClass: function () {
      return {
        'product': true,
        'be': this.product.symbol === 'be',
        'mg': this.product.symbol === 'mg',
        'ti': this.product.symbol === 'ti',
      }
    },
    symbol () {
      return this.product ? this.product.symbol : 'none'
    }
  },
  created () {
    this.isLoading = true
    this.fetchData()
  },
  data () {
    return {
      componentName: 'ProjectPage',
      product: undefined,
      slug: undefined,
      isLoading: false,
    }
  },
  watch: {
    '$route': 'fetchData',
  },
  methods: {
    getProductBySlug (slug) {
      return PRODUCTS[slug]
    },
    fetchData: function () {
      const slug = this.$route.params.slug || 'home'
      this.slug = slug
      console.log(`ProductPage - fetchData`)
      // this.log(`ProductPage - fetchData`)
      const product = this.getProductBySlug(this.slug)
      const og = _.get(product, 'opengraph', false)


      // if (og) {
      //   this.$nextTick(() => {
      //     this.log(`broadcasting opengraph data...`)
      //     eventHub.$emit('open-graph-set', og)
      //   })
      // }

      this.product = product
      this.isLoading = false

    }
  }
}
</script>

<style lang="sass">
@import ~styles/common

.product
  min-height: 100vh
  width: 100%
  height: 100%
  display: flex
  flex-wrap: wrap
  align-content: space-between
  justify-content: space-between
  background-size: contain
  background-repeat: no-repeat
  background-position: bottom center
  padding: 4rem

  &.be
    background-image: url(/images/products/beryllium.jpg)
  &.mg
    background-image: url(/images/products/magnesium.jpg)
  &.ti
    background-image: url(/images/products/titanium.jpg)

  .header
    width: 100%
    text-align: right
    font-size: 2rem

    a
      color: $charcoal
      &:hover, &:active
        text-decoration: none

  .header-chin
    width: 100%
    height: 25vh

  .spec-cell
    align-self: flex-end
    width: auto
    max-width: 28vw

    &.right
      text-align: right

    img
      max-width: 100%

    .spec
      margin-bottom: 2em

  .price
    font-size: 2rem
    padding: 1em

    span
      display: block
      margin-bottom: 1rem

.product-tile-nav
  .element-card
    transition: filter 220ms ease, opacity 220ms ease
    filter: grayscale(100%)
    margin-left: 1rem
    opacity: 0.8
    max-width: (28vw / 4) !important
    &:hover
      filter: grayscale(0%)
      opacity: 1

.router-link-active
  .element-card
    filter: grayscale(0%) !important
    opacity: 1 !important

</style>
