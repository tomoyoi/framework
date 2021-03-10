<template>
  <v-app id="app">
    <v-card class="overflow-hidden">
      <v-app-bar
        absolute
        color="#f9f0f1"
        dark
        shrink-on-scroll
        prominent
        elevate-on-scroll
        scroll-target="#scrolling-techniques"
      >
        <v-divider />
        <a ref="/">
          <v-img max-height="70" max-width="70" src="assets/tomoyo"></v-img>
        </a>
        <v-spacer></v-spacer>
        <template v-slot:extension>
          <v-tabs
            centered
            background-color="#d0d2e4"
            color="#0c1e36"
            v-model="model"
            align-with-title
          >
            <v-tab
              color="#0c1e36"
              exact
              v-for="i in items"
              :key="i.id"
              :to="{ name: i }"
              >{{ i }}</v-tab
            >
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
export default {
  data: function () {
    return {
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