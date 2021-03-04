<template>
  <div>
    <p mt-10>Profile</p>
    <div>
      <v-row>
        <v-col v-for="i in about" :key="i.id">
          <v-card>
            <v-img class="d-inline-block" height='200' width='200' src="assets/profile"></v-img>
            <span v-html="i.comment"></span>
            <span> メールアドレス：{{ i.email }}</span>
            <span>住所：{{ i.address }}</span>
          </v-card>
        </v-col>
      </v-row>
    </div>
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