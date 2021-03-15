<template>
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
</template>

<script>
import axios from "axios";
import idea from "../assets/images/idea.jpg";
import coding from "../assets/images/coding.jpg";
import design from "../assets/images/design.jpg";
import management from "../assets/images/management.jpg";
import planning from "../assets/images/planning.jpg";

export default {
  data: function () {
    return {
      idea,
      coding,
      design,
      planning,
      management,
      images: [design, coding, planning, management],
      tasks: [],
    };
  },
  mounted() {
    axios
      .get("/api/v1/tasks")
      .then((response) => (this.tasks = response.data));
  },
};
</script>

<style scoped>
.margin-170 {
  margin-top: 170px;
  font-size: 2em;
}
.margin-120 {
  margin-top: 120px;
  font-size: 2em;
}
p {
  text-align: center;
}
</style>