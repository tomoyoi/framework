import Vue from "vue";
import Router from "vue-router";
import Home from "../../about";

Vue.use(Router);

export default new Router({
  mode: "history",
  routes: [
    {
      path: "/",
      name: "",
      component: Home,
      children: [
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
    },
  ],
});
