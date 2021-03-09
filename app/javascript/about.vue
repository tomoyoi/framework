<template>
  <div>
    <p>Profile</p>
    <v-row>
      <v-col sm="4">
        <v-img class="rounded-circle" src="assets/profile"></v-img>
      </v-col>
      <v-col sm="8">
        <span class="my-10" v-html="about.comment"></span>
      </v-col>
      <v-col sm="8">
        <span class="mail-margin font-weight-bold">メールアドレス：</span><span>{{ about.email }}</span>
        <v-spacer />
        <span class="mb-10 font-weight-bold">住所：</span><span>{{ about.address }}</span>
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
      .get("/api/v1/owners")
      .then((response) => (this.about = response.data));
  },
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
.mail-margin {
  padding-top: 50px;
}
</style>