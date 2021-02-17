import Vue from 'vue'
import Vuetify from 'vuetify'
import router from './router'
import App from '../../app.vue'
import "vuetify/dist/vuetify.min.css";
import 'material-design-icons-iconfont/dist/material-design-icons.css'

Vue.use(Vuetify);

const vuetify = new Vuetify({
});

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: "#app",
    vuetify,
    router,
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
