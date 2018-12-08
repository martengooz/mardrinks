<template>
  <v-layout justify-center>
    <v-flex xs12 sm12 md12 lg12 >
        <v-container v-bind="{ [`grid-list-md`]: true }" fluid>
          <v-layout row wrap>
            <v-flex
              v-for="n in 20"
              :key="n"
              xs6 sm4 md3 lg2
            >

            <ItemCard/>
            </v-flex>
          </v-layout>
        </v-container>
    </v-flex>
  </v-layout>
</template>

<script>
  import ItemCard from '@/components/ItemCard.vue'

  export default {
    data: () => ({
    }),
    components: {
      ItemCard
    }
  }
</script>
