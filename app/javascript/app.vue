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
        <v-app-bar-nav-icon></v-app-bar-nav-icon>

        <v-divider />
        <a ref="/">
          <v-img max-height="70" max-width="70" src="assets/tomoyo"></v-img>
        </a>
        <v-spacer></v-spacer>
        <template v-slot:extension>
          <v-tabs v-model="model" align-with-title>
            <v-tab exact v-for="i in items" :key="i.id" :to="{ name: i }"
              >{{ i }}</v-tab
            >
          </v-tabs>
        </template>
      </v-app-bar>
      <v-sheet id="scrolling-techniques" class="overflow-y-auto">
        <v-container style="height: 1000px">
          <div class="padding-80 text-center">
            <div>
              <p class="margin-170">Grow with your creativity</p>
              <p>頭の中のアイディアを形にします</p>
              <p class="margin-120">Service</p>
              <v-container fluid style="min-height: 434px">
                <v-row>
                  <v-col cols="6" v-for="i in services" :key="i.id">
                    <v-card>
                      <v-card-title class="headline font-weight-bold justify-center"
                        >{{ i.title }}</v-card-title
                      >
                      <v-img
                        :src="i.image"
                      ></v-img>
                      <v-card-text class="font-weight-bold text--primary text-center"
                        >{{ i.description }}</v-card-text
                      >
                    </v-card>
                  </v-col>
                </v-row>
              </v-container>
            </div>
            <div>
              <p class="margin-120 padding-30">Profile</p>
              <v-row>
                <v-col sm="4">
                  <v-img class="rounded-circle" src="assets/profile"></v-img>
                </v-col>
                <v-col sm="1"></v-col>
                <v-col class="text-left" sm="7">
                  <span v-html="about.comment"></span>
                </v-col>
              </v-row>
            </div>
            <v-btn
              rounded
              block
              x-large
              class="margin-120 white--text"
              color="blue-grey"
              :to="{ name: 'contact' }"
            >
              Contact
            </v-btn>
            <router-view></router-view>
          </div>
        </v-container>
      </v-sheet>
    </v-card>
    <v-card> </v-card>
  </v-app>
</template>
<script>
import axios from "axios";
export default {
  data: function () {
    return {
      services: [],
      about: [],
      items: ['about', 'service', 'contact'],
      model: 'tab-2',
    }
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