import Vue from 'vue';
import Vuetify from 'vuetify';
import router from './router';
import axios from 'axios';
import '@mdi/font/css/materialdesignicons.css';
import { store } from './store';
import App from './App.vue';

Vue.use(Vuetify);

Vue.prototype.$http = axios.create( {
    baseURL: 'http://aloja.me/api/',
    headers: { Accept: 'application/json' }
});

Vue.prototype.$http.interceptors.request.use(
    (config) => {
        let token = store.state.token;
        if (token) {
            config.headers['Authorization'] = `Bearer ${ token }`;
        }
        return config;
    },
    (error) => {
        return Promise.reject(error);
    }
);

new Vue({
    router,
    store,
    vuetify: new Vuetify({ icons: 'mdi' }),
    render: h => h(App)
}).$mount('#app');
