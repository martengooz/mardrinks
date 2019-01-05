<template>
  <v-container v-bind="{ [`grid-list-md`]: true }" fluid>
    <v-layout row wrap>
      <v-flex
        v-for="item in items"
        :key="item.id"
        xs6 sm4 md3 lg2
      > <v-
        <ItemCard @click.native="selectItem({item})" :name="item.name" :img="item.img" />
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
  import ItemCard from '@/components/ItemCard.vue'

  export default {
    name: "ItemGrid",
    data: () => ({
    }),
    methods: {
      selectItem(obj) {
        this.$emit('select-item', obj.item)
      }
    },
    props: {
      category: String,
      items: {}
    },
    components: {
      ItemCard
    }
  }

</script>
