<template>
  <v-app id="inspire">
    <v-card class="overflow-hidden" color="basil">
      <v-app-bar
        absolute
        color="basil"
        shrink-on-scroll
        prominent
        elevate-on-scroll
        scroll-target="#scrolling-techniques-4"
      >
      <v-menu bottom left>
          <template v-slot:activator="{ on, attrs }">
            <v-btn icon v-bind="attrs" v-on="on">
              <v-icon>mdi-dots-vertical</v-icon>
            </v-btn>
          </template>

          <v-list>
            <v-list-item v-for="(item, i) in items" :key="i">
              <v-list-item-title>{{ item.title }}</v-list-item-title>
            </v-list-item>
          </v-list>
        </v-menu>

        <v-toolbar-title>TOMOYO</v-toolbar-title>
        <v-spacer></v-spacer>
        <a pl-4 ref="/">
          <v-img
            max-height="70"
            max-width="70"
            src="assets/tomoyo"
          ></v-img>
        </a>

        <v-spacer></v-spacer>


        <v-btn icon>
          <v-icon>mdi-heart</v-icon>
        </v-btn>



        <template v-slot:extension>
          <v-tabs
            align-with-title
            background-color="transparent"
            color="basil"
            track-color="light_spacely_pink"
          >
            <v-tab>About</v-tab>
            <v-tab>Service</v-tab>
            <v-tab>Blog</v-tab>
            <v-tab>Contact</v-tab>
          </v-tabs>
        </template>
      </v-app-bar>
      <v-sheet
        id="scrolling-techniques-4"
        class="overflow-y-auto"
        max-height="700"
      >
        <v-container style="height: 1400px">
          <router-view />
          <Service />
        </v-container>
      </v-sheet>
    </v-card>
  </v-app>
</template>
<script>
export default {
  components: {
    Service: () => import("service")
  },
  data: () => ({
    items: [
      { title: "About" },
      { title: "Service" },
      { title: "Blog" },
      { title: "Contact" },
    ],
  }),
};
</script>
<style scope>
#inspire {
  height: 1400px;
}
</style>