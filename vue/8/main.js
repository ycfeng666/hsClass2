import { createApp } from 'vue';
import App from './App.vue';
import { createPinia } from 'pinia';
import Antd from 'ant-design-vue';

import 'ant-design-vue/dist/antd.css';

const pinia = createPinia();

createApp(App).use(pinia).use(Antd).mount('#app');
