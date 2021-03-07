<template>
  <div>
    <p mt-10>Profile</p>
    <v-row v-for="i in about" :key="i.id">
      <v-col sm="12">
        <span class="my-10" v-html="i.comment"></span>
      </v-col>
      <v-col sm="4">
        <v-img class="rounded-circle" height='300' width='300' src="assets/profile"></v-img>
      </v-col>
      <v-col sm="8">
        <span class="mail-margin font-weight-bold">メールアドレス：</span><span>{{ i.email }}</span>
        <v-spacer />
        <span class="mb-10 font-weight-bold">住所：</span><span>{{ i.address }}</span>
        <v-spacer />
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
.mail-margin {
  padding-top: 50px;
}
</style>