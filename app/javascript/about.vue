<template>
  <div>
    <p mt-10>Profile</p>
    <v-card flat>
      <v-row v-for="i in about" :key="i.id">
        <v-col>
          <v-img src="assets/profile"></v-img>
        </v-col>
        <v-col> {{ i.comment }} </v-col>
        <v-col> メールアドレス：{{ i.email }} 住所：{{ i.address }}</v-col>
      </v-row>
    </v-card>
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
      .get("/api/v1/owners.json")
      .then((response) => (this.about = response.data));
  },
};
</script>

<style scoped>
p {
  margin-top: 250px;
  font-size: 2em;
  text-align: center;
}
</style>