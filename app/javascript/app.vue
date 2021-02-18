<template>
  <v-app>
    <v-card class="overflow-hidden" color="basil">
      <v-app-bar
        absolute
        color="basil"
        shrink-on-scroll
        prominent
        elevate-on-scroll
        scroll-target="#scrolling-techniques-4"
      >
        <v-app-bar-nav-icon></v-app-bar-nav-icon>

        <v-toolbar-title>TOMOYO</v-toolbar-title>
        <v-spacer></v-spacer>
        <a pl-4 ref="/">
          <v-img
            max-height="70"
            max-width="70"
            src="assets/tomoyo.png"
          ></v-img>
        </a>

        <v-spacer></v-spacer>

        <v-btn icon>
          <v-icon>mdi-magnify</v-icon>
        </v-btn>

        <v-btn icon>
          <v-icon>mdi-heart</v-icon>
        </v-btn>

        <v-menu bottom left>
          <template v-slot:activator="{ on, attrs }">
            <v-btn icon color="yellow" v-bind="attrs" v-on="on">
              <v-icon>mdi-dots-vertical</v-icon>
            </v-btn>
          </template>

          <v-list>
            <v-list-item v-for="(item, i) in items" :key="i">
              <v-list-item-title>{{ item.title }}</v-list-item-title>
            </v-list-item>
          </v-list>
        </v-menu>

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
        max-height="600"
      >
        <v-container style="height: 1000px"></v-container>
      </v-sheet>
    </v-card>
    <div>
      <router-view />
    </div>
  </v-app>
</template>
<script>
export default {
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
