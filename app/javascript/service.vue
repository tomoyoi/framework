<template>
  <div>
    <p mt-10>Service</p>
    <v-container fluid style="min-height: 434px">
      <v-row>
        <v-col cols="6" v-for="i in services" :key="i.id">
          <v-card>
          <v-img
            :src="i.image"
          ></v-img>
            <v-card-title class="justify-center"
              ><div>{{ i.title }}</div></v-card-title
            >
            <v-card-text class="text--primary text-center"
              >{{ i.description }}</v-card-text
            >
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      services: [],
    };
  },
  mounted() {
    axios
      .get("/api/v1/services.json")
      .then((response) => (this.services = response.data));
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