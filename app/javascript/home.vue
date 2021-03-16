<template>
  <div class="padding-80 text-center">
    <div>
      <p class="margin-170">Grow your creativity</p>
      <p>頭の中のそのアイディア、かたちにします！</p>
      <v-img :src="idea"></v-img>
      <p class="margin-120">Service</p>
      <v-container fluid style="min-height: 434px">
        <v-row>
          <v-col cols="6" v-for="task, index in tasks" :key="task.id">
            <v-card>
              <v-card-title class="headline font-weight-bold justify-center">{{
                task.title
              }}</v-card-title>
              <v-img :src="images[index]"></v-img>
              <v-card-text class="font-weight-bold text--primary text-center">{{
                task.description
              }}</v-card-text>
            </v-card>
          </v-col>
        </v-row>
      </v-container>
    </div>
    <div>
      <p class="margin-120 padding-30">Profile</p>
      <v-row>
        <v-col sm="4">
          <v-img class="rounded-circle" :src="profile"></v-img>
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
</template>
<script>
import axios from "axios";
import profile from "../assets/images/profile.jpg";
import idea from "../assets/images/idea.jpg";
import coding from "../assets/images/coding.jpg";
import design from "../assets/images/design.jpg";
import management from "../assets/images/management.jpg";
import planning from "../assets/images/planning.jpg";

export default {
  data: function () {
    return {
      profile,
      idea,
      coding,
      design,
      planning,
      management,
      images: [design, coding, planning, management],
      tasks: [],
      about: [],
    };
  },
  mounted() {
    axios
      .get("/api/v1/tasks")
      .then((response) => {
        this.tasks = response.data
      })
      .catch((err) => {
        console.log(err);
      })
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