<template>
<v-card flat tile>
  <v-img
    :src=img
    height="150px"
  >
  </v-img>
  <v-card-text>
    <v-layout justify-center>
      <span>{{name}}</span>
    </v-layout>
  </v-card-text>
</v-card>
</template>

<script>
  export default {
    data: () => ({
    }),
    props: {
      id: String,
      name: String,
      img: String
    }
  }
</script>
