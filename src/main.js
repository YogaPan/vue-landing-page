import Vue from 'vue'
import VueI18n from 'vue-i18n'

import App from './App.vue'
import messages from './language'

Vue.use(VueI18n)
Vue.config.productionTip = false

// Create VueI18n instance with options
const i18n = new VueI18n({
  locale: 'en', // set locale
  messages, // set locale messages
})

// Create a Vue instance with `i18n` option
// new Vue({ i18n }).$mount('#app')

new Vue({
  render: h => h(App),
  i18n,
}).$mount('#app')
