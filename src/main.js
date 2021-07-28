import { createApp } from 'vue'
import { createI18n } from 'vue-i18n'
import App from './App.vue'
import { langCode } from './constants/i18n'
import messages from './constants/i18n/index.js'

// Vue.config.productionTip = false;

const i18n = createI18n({
  locale: langCode.zhTw,
  messages
})

const app = createApp(App)
app.use(i18n)
app.mount('#app')
