<template>
  <div>
    <p mt-10>Service</p>
    <v-container fluid>
      <v-row>
        <v-col v-for="i in services" :key="i.id">
          <v-card>
          <v-img
            class="white--text align-end"
            gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
            height="200px"
            max-width="300px"
            :src="i.image"
          ></v-img>
            <v-card-title class="justify-center"
              ><div>{{ i.title }}</div></v-card-title
            >
            <v-card-text class="text--primary"
              ><div>{{ i.description }}</div></v-card-text
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