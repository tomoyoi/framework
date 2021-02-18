<template>
  <div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      about: []
    }
  },
  mounted () {
    axios
      .get('/api/v1/owners.json')
      .then(response => (this.about = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>