<template>
<v-card flat tile>

  <v-img :src="img" height="300px"></v-img>

  <v-card-text>

      <v-layout justify-center>
        <h1 class="lighter">{{name}}</h1>
      </v-layout>
      <p class="mb-4">En drink som är najs i de flesta glas.</p>


      <table class="table table-hover">
        <thead>
          <h3 class="lighter">Ingredients</h3>
        </thead>
        <tbody>
          <tr
            v-for="(ingredient, key) in ingredients"
          >
            <td col xs12 sm12 md4 lg4>
              <span class="font-weight-bold">{{Object.keys(ingredient)[0]}}</span>
            </td>
            <td col xs12 sm12 md4 lg4 col>
              <span>{{ingredient[Object.keys(ingredient)[0]]}}</span>
            </td>
          </tr>
        </tbody>
      </table>

      <v-layout justify-center>
        <v-form>
        <v-btn
          large
          disabled
          @click="clear">Cancel
        </v-btn>
        <v-btn
          primary
          large
          color="success"
          @click="submit">Order
        </v-btn>
      </v-form>
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
      img: String,
      ingredients: []
    }
  }
</script>

<style>
</style>
