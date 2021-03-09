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

        <v-divider/>
        <a ref="/">
          <v-img
            max-height="70"
            max-width="70"
            src="assets/tomoyo"
          ></v-img>
        </a>
        <v-spacer></v-spacer>
      </v-app-bar>
      <v-sheet
        id="scrolling-techniques"
        class="overflow-y-auto"
      >
        <v-container style="height: 1000px;">
          <Service />
          <About />
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
          </div>
        </v-container>
      </v-sheet>
    </v-card>
    <v-card>

    </v-card>
  </v-app>
</template>
<script>
export default {
  components: {
    About: () => import("about"),
    Service: () => import("service"),
    Contact: () => import("contact")
  },
  data: () => ({
  }),
};
</script>
<style scope>
.padding-80 {
  padding: 80px 0;
}
</style>