import { createApp } from 'vue'
import { createPinia } from 'pinia'


import App from './App.vue'
import router from './router'


import "@fontsource/nunito-sans/200.css"
import "@fontsource/nunito-sans/300.css"
import "@fontsource/nunito-sans/400.css"
import "@fontsource/nunito-sans/600.css"
import "@fontsource/nunito-sans/700.css"
import "@fontsource/nunito-sans/800.css"
import "@fontsource/nunito-sans/900.css"

import './assets/main.css'

const app = createApp(App)

app.use(createPinia())
app.use(router)

app.mount('#app')
