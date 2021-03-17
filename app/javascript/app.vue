<template>
  <v-app id="app">
    <v-card class="overflow-hidden">
      <v-app-bar
        absolute
        shrink-on-scroll
        prominent
        elevate-on-scroll
        scroll-target="#scrolling-techniques"
      >
        <v-spacer />
        <a ref="/">
          <v-img height="50" max-width="100" :src="tomoyo"></v-img>
        </a>
        <v-spacer />
        <template v-slot:extension>
          <v-tabs
            background-color="transparent"
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
      <v-sheet id="scrolling-techniques" class="overflow-y-auto" style="height: 1200px;">
        <v-container style="height: 500px;">
          <div class="padding-80">
            <router-view></router-view>
          </div>
        </v-container>
      </v-sheet>
    </v-card>
  </v-app>
</template>
<script>
import tomoyo from "../assets/images/tomoyo.png";
export default {
  data: function () {
    return {
      tomoyo,
      about: [],
      items: ["about", "service", "contact"],
    };
  },
};
</script>
<style scope>
#app {
  font-family: 'PT Serif', serif;
}
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