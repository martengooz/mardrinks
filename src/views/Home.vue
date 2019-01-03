<template>
  <v-container fluid class="grey lighten-4">

    <v-layout xs12 sm12 md8 lg8 justify-center fill-height>
      <v-flex>
        <div row v-for="(itemList, category) in Items">
          <ItemGrid :category="category" :items="itemList" />
        </div>
      </v-flex>
    </v-layout>

    <v-layout>
      <v-flex>
        <ItemDetails
          :id="'1'"
          :name="'Drink'"
          :img="'https://unsplash.it/150/300?image=23'"
          :ingredients='[
            {"Is" : "2 bitar"},
            {"Vatten" : "40 cl"}
          ]'/>
      </v-flex>
    </v-layout>

  </v-container>
</template>

<script>
// @ is an alias to /srcjustify-centerjustify-center justify-center justify-center justify-center
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

<style>
.lighter {
  font-weight: 300;
}
</style>
