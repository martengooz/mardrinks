<template>
<v-card flat tile>
  <v-img
    :src="`https://unsplash.it/150/300?image=${Math.floor(Math.random() * 100) + 1}`"
    height="150px"
  >
  </v-img>
  <v-card-text>
    <v-layout justify-center>
      <span>Vodka Virgin</span>
    </v-layout>
  </v-card-text>
</v-card>
</template>

<script>
  export default {
    data: () => ({
    }),
    props: [
      'title'
    ]
  }
</script>
