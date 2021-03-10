import Vue from "vue";
import Router from "vue-router";

Vue.use(Router);

export default new Router({
  mode: "history",
  routes: [
    {
      path: "/",
      name: "home",
      component: () => import("../../home"),
    },
    {
      path: "about",
      name: "about",
      component: () => import("../../about"),
    },
    {
      path: "service",
      name: "service",
      component: () => import("../../service"),
    },
    {
      path: "contact",
      name: "contact",
      component: () => import("../../contact"),
    },
  ],
});
