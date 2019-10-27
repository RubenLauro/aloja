import Vue from 'vue';
import Vuex from 'vuex';
import axios from 'axios'

Vue.use(Vuex);

export const store = new Vuex.Store({
    state: {
        status: '',
        user: JSON.parse(localStorage.getItem('user')) || null,
        token: localStorage.getItem('access_token') || null
    },
    getters : {
        isAuthenticated(state) {
            return state.token !== null && state.token !== undefined;
        }
    },
    mutations: {
        setUser(state, payload) {
            state.user = payload;
        },
        saveToken(state, token) {
            state.token = token;
        },
        removeUser(state) {
            state.user = null;
        },
        setStatus(state, payload) {
            state.status = payload;
        },
        setError(state, payload) {
            state.error = payload;
        },
    },
    actions: {
        signIn({commit}, payload) {
            return new Promise((resolve, reject) => {
                axios.post('/api/login', {
                    email: payload.email,
                    password: payload.password
                })
                    .then(response => {
                        const token = response.data.access_token;
                        localStorage.setItem('access_token', token);
                        commit('saveToken', token);
                        commit('setStatus', 'success');
                        axios.get('/api/me',  { 'headers': { 'Authorization': 'Bearer ' + token}})
                            .then(resp => {
                                let user = resp.data.data;
                                localStorage.setItem('user', JSON.stringify(user));
                                commit('setUser', user);
                                resolve(response);
                            }).catch(error => {
                                reject(error);
                        });
                    })
                    .catch(error => {
                        reject(error);
                    })
            })
        },
            /*
            firebase
                .auth()
                .signInWithEmailAndPassword(
                    payload.email,
                    payload.password,
                )
                .then(
                    result => {
                        commit('setUser', result.user.uid);
                        commit('setStatus', 'success');
                        commit('setError', null);
                    },
                    err => {
                        commit('setUser', null);
                        commit('setStatus', 'unsuccessful');
                        commit('setError', err);
                    },
                );
                */
        signOut({commit}) {
            return new Promise((resolve, reject) => {
                axios.post('/api/logout', {},
                    {
                        headers: { 'Authorization': 'Bearer ' + this.state.token}
                    })
                    .then(response => {
                        localStorage.clear();
                        commit('setUser', null);
                        commit('saveToken', null);
                        commit('setStatus', 'success');
                        commit('setError', null);
                        resolve(response);
                    })
                    .catch(error => {
                        localStorage.clear();
                        commit('setUser', null);
                        commit('saveToken', null);
                        commit('setStatus', 'failure');
                        commit('setError', error.message);
                        reject(error);
                    });
            })
            /*
            firebase
                .auth()
                .signOut()
                .then(response => {
                    commit('setUser', null);
                    commit('setStatus', 'success');
                    commit('setError', null);
                })
                .catch(error => {
                    commit('setStatus', 'failure');
                    commit('setError', error.message);
                });

             */
        },
    },
});
