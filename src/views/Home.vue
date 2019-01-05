<template>
  <v-container fluid class="grey lighten-4">

    <v-layout xs12 sm12 md8 lg8 justify-center fill-height>
      <v-flex>
        <div row v-for="(itemList, category) in Items">
          <ItemGrid @select-item="selectItem" :category="category" :items="itemList" @click.stop="drawerRight = !drawerRight"/>
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
      v-if="selectedItem"
      class="grey lighten-4"
      v-bind:item="selectedItem"
      @toggle-right-drawer="toggleRightDrawer"
      >
    </ItemDetails>
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
    selectedItem: null,
    drawer: true,
    drawerRight: false,
    right: null,
    left: null
  }),
  methods: {
    selectItem(item) {
      this.selectedItem = item;
      this.drawerRight = true;
    },
    toggleRightDrawer(){
      this.drawerRight = !this.drawerRight;
    }
  },
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
