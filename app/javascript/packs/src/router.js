import Vue from 'vue'
import Router from 'vue-router'
import About from '../../about.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'about',
      component: About
    }
  ]
})
