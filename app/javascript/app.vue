<template>
  <v-app id="app">
    <v-card class="overflow-hidden" color="basil">
      <v-app-bar
        absolute
        dark
        shrink-on-scroll
        prominent
        elevate-on-scroll
        scroll-target="#scrolling-techniques"
      >
        <v-divider />
        <a ref="/">
          <v-img max-height="70" max-width="70" :src="tomoyo"></v-img>
        </a>
        <v-spacer></v-spacer>
        <template v-slot:extension>
          <v-tabs
            centered
            background-color="transparent"
            v-model="model"
            align-with-title
          >
            <v-tab
              exact
              v-for="i in items"
              :key="i.id"
              :to="{ name: i }"
              >{{ i }}
            </v-tab>
          </v-tabs>
        </template>
      </v-app-bar>
      <v-sheet id="scrolling-techniques" class="overflow-y-auto">
        <v-container style="height: 1000px">
          <div class="padding-80">
            <router-view></router-view>
          </div>
        </v-container>
      </v-sheet>
    </v-card>
  </v-app>
</template>
<script>
import axios from "axios";
import tomoyo from "../assets/images/tomoyo.png";
export default {
  data: function () {
    return {
      tomoyo,
      services: [],
      about: [],
      items: ["about", "service", "contact"],
      model: "tab-2",
    };
  },
  mounted() {
    axios
      .get("/api/v1/services.json")
      .then((response) => (this.services = response.data));
    axios
      .get("/api/v1/owners")
      .then((response) => (this.about = response.data));
  },
};
</script>
<style scope>
.padding-80 {
  padding: 80px 0;
}
.margin-170 {
  margin-top: 170px;
  font-size: 2em;
}
.margin-120 {
  margin-top: 120px;
  font-size: 2em;
}
.padding-30 {
  padding-bottom: 30px;
}
</style>