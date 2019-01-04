<template>
  <v-container fluid class="grey lighten-4">

    <v-layout xs12 sm12 md8 lg8 justify-center fill-height>
      <v-flex>
        <div row v-for="(itemList, category) in Items">
          <ItemGrid :category="category" :items="itemList" @click.stop="drawerRight = !drawerRight"/>
        </div>
      </v-flex>
    </v-layout>

    <v-navigation-drawer
      v-model="drawerRight"
      fixed
      right
      clipped
      app
      class="grey lighten-4"
    >
    <ItemDetails
      class="grey lighten-4"
      :id="'1'"
      :name="'Heineken'"
      :description="'Brödig smak med inslag av honung, knäckebröd och citrus. Serveras vid 8-10°C till vegetariska rätter, till rätter av fisk eller kyckling eller som sällskapsdryck.'"
      :img="'/img/7.jpg'"
      :ingredients='[
        {"Öl" : "5,2%"},
      ]'/>
  </v-navigation-drawer>
  </v-container>
</template>

<script>
// @ is an alias to /srcjustify-centerjustify-center justify-center justify-center justify-center
import ItemGrid from '@/components/ItemGrid.vue'
import { Items } from '@/items.js'
import ItemDetails from '@/components/ItemDetails.vue'

export default {
  name: 'home',
  data: () => ({
    Items : Items,
    drawer: true,
    drawerRight: true,
    right: null,
    left: null
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
