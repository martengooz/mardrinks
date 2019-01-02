<template>
  <v-container fluid fill-height class="grey lighten-4">
    <v-layout justify-center>
      <v-flex xs12 sm12 md8 lg8 >
        <div row v-for="(itemList, category) in Items">
          <ItemGrid :category="category" :items="itemList" />
        </div>
      </v-flex>

      <v-flex xs0 sm0 md4 lg4 >
        <ItemDetails :id="'asd'" :name="'Drink'"/>
    </v-flex>
  </v-layout>
  </v-container>
</template>

<script>
// @ is an alias to /src
import ItemGrid from '@/components/ItemGrid.vue'
import ItemDetails from '@/components/ItemDetails.vue'
import { Items } from '@/items.js'

export default {
  name: 'home',
  data: () => ({
    Items : Items
  }),
  components: {
    ItemGrid,
    ItemDetails
  }
}
</script>
