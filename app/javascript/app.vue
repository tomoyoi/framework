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
          <v-tabs-items v-model="model">
            <v-tab-item exact v-for="i in items" :key="i.id" :value="{ name: i }">
              <v-card flat>
                <v-card-text color="black" v-text="text"></v-card-text>
              </v-card>
            </v-tab-item>
          </v-tabs-items>
          <div class="padding-80 text-center">
            <v-btn
              rounded
              block
              x-large
              class="mx-10 white--text"
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
export default {
  components: {
    About: () => import("about"),
    Service: () => import("service"),
  },
  data: function () {
    return {
      items: ['about', 'service', 'contact'],
      model: 'tab-2',
      text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    }
  },
  mounted() {
    console.log(this.$route.name);
  },
};
</script>
<style scope>
.padding-80 {
  padding: 80px 0;
}
</style>