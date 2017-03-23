import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home'
import Faq from '../views/Faq'
import Product from '../views/Product'
import Static from '../views/Static'

Vue.use(Router)

export default new Router({
  mode: 'hash',
  routes: [
    {
      path: '/faq',
      name: 'faq',
      component: Faq,
    },
    {
      path: '/product/:slug',
      name: 'product',
      component: Product,
      props: true,
    },
    {
      path: '/',
      name: 'home',
      component: Home,
    },
    {
      path: '/:slug',
      name: 'static',
      component: Static,
      props: true,
    },
  ]
})
