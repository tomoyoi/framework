<template>
  <div>
    <p mt-10>Service</p>
    <v-card flat>
      <v-row v-for="i in services" :key="i.id">
        <v-col> {{ i.title }}
          {{ i.description }}</v-col>
      </v-row>
    </v-card>
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