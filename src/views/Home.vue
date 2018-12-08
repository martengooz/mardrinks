<template>
  <v-container fluid fill-height class="grey lighten-4">
    <ItemGrid/>
  </v-container>
</template>

<script>
// @ is an alias to /src
import ItemGrid from '@/components/ItemGrid.vue'

export default {
  name: 'home',
  components: {
    ItemGrid
  }
}
</script>
