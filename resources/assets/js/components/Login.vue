<template>
    <v-container>
        <h3>Sign in</h3>
        <v-text-field label="Sign in" v-model="email"/>
        <v-text-field label="Password" type="password" v-model="password"/>
        <v-btn text @click="signIn" color="success">Sign In</v-btn>
    </v-container>
</template>

<script>
    export default {
        name: "login",
        data() {
            return {
                email: "",
                password: ""
            };
        },
        methods: {
            signIn() {
                const user = {
                    email: this.email,
                    password: this.password
                };
                this.$store.dispatch("signIn", user)
                    .then(() => {
                          console.log("loginsuccessful");
                          this.$emit("loginsuccessful");
                    })
                    .catch((error) => {
                        console.log("loginunsuccessful");
                        this.$emit("loginunsuccessful");
                    });
            }
        }
    };
</script>

<style>
</style>
