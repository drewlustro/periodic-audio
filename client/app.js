import Vue from 'vue'
import BootstrapVue from 'bootstrap-vue/dist/bootstrap-vue.esm';
import { sync } from 'vuex-router-sync'
import App from './components/App'
import router from './router'
import store from './store'

sync(store, router)


Vue.use(BootstrapVue)

const app = new Vue({
  router,
  store,
  ...App
})

export { app, router, store }
