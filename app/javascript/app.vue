<template>
  <v-app id="app">
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
      <v-btn icon href="https://www.instagram.com/healthy_life_log/" target="_blank">
        <v-img height="25" max-width="25" :src="instagram"></v-img>
      </v-btn>
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
    <v-sheet id="scrolling-techniques" class="overflow-y-auto">
      <v-container style="height: 700px;">
        <div class="padding-80">
          <router-view></router-view>
        </div>
      </v-container>
    </v-sheet>
  </v-app>
</template>
<script>
import tomoyo from "../assets/images/tomoyo.png";
import instagram from "../assets/images/instagram.png";
export default {
  data: function () {
    return {
      tomoyo,
      instagram,
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