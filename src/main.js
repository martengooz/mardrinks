import Vue from 'vue'
import App from './App.vue'

// Vuetify
import './plugins/vuetify'
import Vuetify from 'vuetify'

import router from './router'

Vue.use(Vuetify)

Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
