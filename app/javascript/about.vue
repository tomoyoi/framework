<template>
  <div>
    <table>
      <tbody>
        <tr>
          <th>name</th>
          <th>email</th>
          <th>address</th>
          <th>comment</th>
        </tr>
        <tr v-for="e in about" :key="e.id">
          <td>{{ e.name }}</td>
          <td>{{ e.email }}</td>
          <td>{{ e.address }}</td>
          <td>{{ e.comment }}</td>
        </tr>
      </tbody>
    </table>
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