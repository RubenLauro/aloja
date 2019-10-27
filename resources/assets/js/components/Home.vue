<template>
    <div class="home">
        <v-row>
            <v-col cols="12" sm="6" offset-sm="3">
                <v-card>
                    <v-container fluid>
                        <v-row class="text-sm-center">
                            <v-col cols="12">
                                <v-card color="grey lighten-4" flat tile>
                                    <v-toolbar dense>
                                        <v-spacer/>

                                        <v-btn icon @click="getItems">
                                            <v-icon>mdi-refresh</v-icon>
                                        </v-btn>
                                        <!-- CART DIALOG -->
                                        <v-dialog v-model="cartDialog" persistent max-width="390">
                                            <template v-slot:activator="{on}">
                                                <v-btn icon v-on="on" @click="cartDialog=true">
                                                    <v-badge>
                                                        <template v-slot:badge>{{cart.length}}</template>
                                                        <v-icon>mdi-cart</v-icon>
                                                    </v-badge>
                                                </v-btn>
                                            </template>
                                            <!-- CART DIALOG CONTENT -->
                                            <v-card class="pa-md-4 mx-auto" tile>
                                                <v-tabs v-model="selectedTab" grow>
                                                    <v-tab @click="onTabItemClick(1)">Carrinho</v-tab>
                                                    <v-tab v-if="acceptedPurchase" @click="onTabItemClick(2)">Envio
                                                    </v-tab>
                                                    <v-tab v-if="acceptedPurchase" @click="onTabItemClick(3)">
                                                        Finalizar
                                                    </v-tab>

                                                    <v-tab-item>
                                                        <v-data-table
                                                                :headers="headers"
                                                                :items="cart"
                                                                item-key="id"
                                                                class="elevation-1"
                                                        >
                                                            <template v-slot:item.delete="{item}">
                                                                <v-btn icon @click="removeItem(item.id)">
                                                                    <v-icon>mdi-trash-can</v-icon>
                                                                </v-btn>
                                                            </template>
                                                            <template v-slot:no-data>
                                                                <p>Adicione produtos ao seu carrinho.</p>
                                                            </template>
                                                        </v-data-table>
                                                    </v-tab-item>
                                                    <v-tab-item>
                                                        <v-form>
                                                            <v-text-field label="Nome" v-model="nome"
                                                                          required></v-text-field>
                                                            <v-text-field label="Morada" v-model="morada"
                                                                          required></v-text-field>
                                                            <v-text-field label="NIF" v-model="nif"
                                                                          required></v-text-field>

                                                        </v-form>
                                                    </v-tab-item>
                                                    <v-tab-item>
                                                        <v-text-field label="Entidade" v-model="valueEntidade"
                                                                      :disabled="true">{{valueEntidade}}
                                                        </v-text-field>
                                                        <v-text-field label="Referência" v-model="valueReferencia"
                                                                      :disabled="true">{{valueReferencia}}
                                                        </v-text-field>
                                                    </v-tab-item>
                                                </v-tabs>
                                                <v-card-actions>
                                                    <v-spacer/>
                                                    <v-btn text color="success" @click="buy()">{{buyBtnTxt}}</v-btn>
                                                    <v-btn text color="error" @click="cartDialog = false">Fechar</v-btn>
                                                </v-card-actions>
                                            </v-card>
                                        </v-dialog>

                                        <!-- END CART DIALOG END -->
                                        <v-divider vertical class="mx-2"/>
                                        <!-- LOGIN DIALOG -->
                                        <v-dialog v-model="loginDialog" persistent max-width="390">
                                            <template v-slot:activator="{on}">
                                                <v-btn text v-on="on" v-if="!isAuthenticated">Login</v-btn>
                                                <v-btn text v-else @click="logout">Logout</v-btn>
                                            </template>
                                            <v-card class="pa-md-4 mx-auto" tile>
                                                <login
                                                        v-if="register"
                                                        v-on:loginsuccessful="loginSuccess"
                                                        v-on:loginunsuccessful="loginUnsuccess"
                                                ></login>
                                                <v-text-field v-else>sdsd</v-text-field>
                                                <v-divider class="ma-4"></v-divider>
                                                <v-container>
                                                    <p>
                                                        Not what you're looking for?
                                                        <a @click="changeAction">{{createdText}}</a>
                                                    </p>
                                                </v-container>

                                                <v-card-actions>
                                                    <v-spacer/>
                                                    <v-btn text color="error" @click="loginDialog = false">Cancelar
                                                    </v-btn>
                                                </v-card-actions>
                                            </v-card>
                                        </v-dialog>
                                        <!-- END LOGIN DIALOG END -->
                                    </v-toolbar>
                                </v-card>
                            </v-col>
                            <v-col v-for="n in items" :key="n.id" cols="4" lg="4" md="4" sm="3">
                                <v-card
                                        flat
                                        tile
                                        class="d-flex"
                                        :disabled="!n.available"
                                >
                                    <v-list-item-content align-content-center>
                                        <v-img
                                                contain
                                                :src="'storage/assets/laptop.png'"
                                                :lazy-src="'storage/assets/laptop.png'"
                                        ></v-img>
                                        <v-list-item-title class="text-wrap headline mb-1">{{n.name}}
                                        </v-list-item-title>
                                        <v-list-item-subtitle style="color: success">
                                            <v-row class="text-sm-center">
                                                <v-col cols="12">
                                                    <p class="text-wrap">
                                                        <strong>{{n.price + '€ - Disponível '}}</strong>
                                                        <v-icon v-if="n.available" small color="success">mdi-check
                                                        </v-icon>
                                                        <v-icon v-else small color="red">mdi-close</v-icon>
                                                    </p>
                                                </v-col>
                                            </v-row>
                                        </v-list-item-subtitle>
                                    </v-list-item-content>
                                </v-card>
                                <v-text-field
                                        :disabled="!n.available"
                                        v-model="n.currentQuantity"
                                        prepend-icon="mdi-minus"
                                        @click:append-outer="increment(n)"
                                        @click:prepend="decrement(n)"
                                        label="Quantidade"
                                        append-outer-icon="mdi-plus"
                                ></v-text-field>
                                <v-btn class="ma-2" outlined color="green" v-if="n.currentQuantity == 0" disabled>Add to
                                    cart
                                </v-btn>
                                <v-btn class="ma-2" outlined color="green" v-else @click="addToCart(n)">Add to cart
                                </v-btn>
                            </v-col>
                        </v-row>
                    </v-container>
                </v-card>
            </v-col>
        </v-row>
    </div>
</template>

<script>
    import login from "./Login.vue";

    export default {
        name: "home",
        components: {
            login
        },
        data() {
            return {
                selectedItems: [],
                items: [],
                cart: [],
                cartDialog: false,
                loginDialog: false,
                register: false,
                createdText: this.register ? "Create an account!" : "Sign in!",
                acceptedPurchase: false,
                selectedTab: 0,
                loginBtnText: "Login",
                buyBtnTxt: "Proceder para a compra",
                valueReferencia: "",
                valueEntidade: "",
                nome: "",
                morada: "",
                nif: "",
                headers: [
                    {text: "Produto", value: "id"},
                    {text: "Quantidade", value: "currentQuantity"},
                    {text: "Apagar", value: "delete"}
                ]
            };
        },
        computed: {
            isAuthenticated: function () {
                return this.$store.getters.isAuthenticated;
            }
        },
        created() {
            this.getItems();
            if (this.$store.state.user)
                this.loginBtnText = this.$store.state.user;
        },
        methods: {
            increment(item) {
                item.currentQuantity += 1;
            },
            decrement(item) {
                if (item.currentQuantity > 0) {
                    item.currentQuantity -= 1;

                    if (item.currentQuantity === 0) {
                        this.cart.splice(this.cart.findIndex(k => k.id === item.id), 1);
                    }
                }
            },
            //AUTH
            loginSuccess() {
                this.loginDialog = false;
                this.loginBtnText = "Logout";
            },
            loginUnsuccess() {
                this.loginBtnText = "Login";
            },
            logout() {
                this.$store.dispatch("signOut").then(() => {
                    if (this.$store.state.status == "success") {
                        this.loginBtnText = "Login";
                    }
                });
            },
            //END AUTH
            getItems() {
                this.items = [];
                this.$http.get('/products')
                    .then(resp => {
                        resp.data.data.forEach((item) => {
                            item.currentQuantity = 0;
                            this.items.push(item);
                        });
                    }).catch(resp => {
                    console.log(resp);
                });
            },
            addToCart(item) {
                let newItem = Object.assign({}, item);
                let exists = false;
                if (this.cart.length > 0) {
                    for (let i = 0; i < this.cart.length; i++) {
                        const element = this.cart[i];
                        if (element.id == item.id) {
                            exists = true;
                            element.currentQuantity = newItem.currentQuantity;
                            break;
                        }
                    }
                    if (!exists) {
                        this.cart.push(newItem);
                    }
                } else {
                    this.cart.push(newItem);
                }
            },
            changeAction() {
                this.register = !this.register;
                if (this.register) this.createdText = "Create an account!";
                else this.createdText = "Sign in!";
            },
            removeItem(itemId) {
                // isto podia ser feito com um find, escusava de existir um for
                for (let i = 0; i < this.cart.length; i++) {
                    const element = this.cart[i];
                    if (element.id == itemId) {
                        this.cart.splice(i, 1);
                        break;
                    }
                }
            },
            buy() {
                if (this.selectedTab === 0 && this.cart && this.cart.length) {
                    this.acceptedPurchase = true;
                    this.selectedTab = 1;
                } else if (this.selectedTab === 1) {

                    if (this.valueReferencia === "") {
                        this.valueReferencia = this.generateReferencia();
                        this.valueEntidade = this.generateEntidade();
                    }

                    this.selectedTab = 2;
                } else if (this.selectedTab === 2) {

                    if (this.$store.getters.isAuthenticated) {

                        if (this.cart.length > 0) {

                            if (this.valueReferencia === "") {
                                this.valueReferencia = this.generateReferencia();
                                this.valueEntidade = this.generateEntidade();
                            }

                            //const db = firebase.firestore();

                            const items = [];

                            for (let i = 0; i < this.cart.length; i++) {
                                items.push({id: this.cart[i].id, quantity: this.cart[i].currentQuantity});
                            }

                            this.$http.post('/orders', {
                                name: this.nome,
                                address: this.morada,
                                nif: this.nif,
                                products: items
                            }).then(resp => {
                                window.alert("Encomenda guardada");
                                this.cart.splice(0, this.cart.length);
                                this.nome = '';
                                this.morada = '';
                                this.nif = '';
                                this.valueReferencia = '';
                                this.valueEntidade = '';
                                this.cartDialog = false;
                                this.acceptedPurchase = false;
                            }).catch(error => {
                                window.alert("Erro ao guardar a encomenda");
                            })
                            /*
                            db.collection("encomendas").add({
                                userId: 1, produtos: items, nome: this.nome, morada: this.morada,
                                nif: this.nif, entidade: this.valueEntidade, referencia: this.valueReferencia
                            }).then(() => {
                                    window.alert("Encomenda guardada");
                                    this.cart.splice(0, this.cart.length);
                                    this.nome = '';
                                    this.morada = '';
                                    this.nif = '';
                                    this.valueReferencia = '';
                                    this.valueEntidade = '';
                                    this.cartDialog = false;
                                    this.acceptedPurchase = false;
                                }, err => {
                                    window.alert("Erro ao guardar a encomenda");
                                }
                            );

                             */
                        } else {
                            window.alert("Sem itens selecionados");
                        }
                    } else {
                        window.alert("Necessitas de estar autenticado para realizar esta operação");
                        // podemos meter o form do login para se iniciar a sessão
                    }
                }

            },
            onTabItemClick(id) {
                if (id === 1 || id === 2) {
                    this.buyBtnTxt = "Proceder para o pagamento";
                } else if (id === 3) {
                    this.buyBtnTxt = "Pagar";

                    if (this.valueReferencia === "") {
                        this.valueReferencia = this.generateReferencia();
                        this.valueEntidade = this.generateEntidade();
                    }
                }
            },
            generateEntidade() {
                let randomNumber = "";

                for (let i = 0; i < 4; i++) {
                    randomNumber += `${Math.floor(Math.random() * 10)}`;
                }

                return randomNumber;
            },
            generateReferencia() {
                let randomNumber = "";

                for (let i = 0; i < 8; i++) {
                    randomNumber += `${Math.floor(Math.random() * 10)}`;
                }

                return randomNumber;
            }
        }
    };
</script>
