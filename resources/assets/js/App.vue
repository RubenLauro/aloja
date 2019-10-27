<template>
  <v-app>
    <v-app-bar app>
      <v-toolbar-title>
        <v-img contain :src="'/storage/assets/LOJALOGO.png'"></v-img>
      </v-toolbar-title>
      <v-spacer></v-spacer>
    </v-app-bar>
    <v-content>
      <router-view />
    </v-content>
  </v-app>
</template>

<script>
export default {
  name: "App",
  data: () => ({})
};
</script>
