<template>
  <div class="margin-150">
    <p class="text-center margin-120">Profile</p>
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
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      about: [],
    };
  },
  mounted() {
    axios
      .get("/api/v1/owners")
      .then((response) => (this.about = response.data));
  },
};
</script>

<style scoped>
.margin-150 {
  margin-top: 150px;
}
.margin-120 {
  margin-top: 120px;
  font-size: 2em;
}
.padding-30 {
  padding-bottom: 30px;
}
</style>