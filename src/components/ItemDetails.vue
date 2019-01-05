<template>
<v-card flat tile>
  <v-img :src="item.img" height="300px"></v-img>
  <v-card-text>

      <v-layout justify-center>
        <h1 class="lighter">{{item.name}}</h1>
      </v-layout>
      <p class="mb-4">{{item.description}}</p>


      <table class="table table-hover">
        <thead>
          <h3 class="lighter">Ingredients</h3>
        </thead>
        <tbody>
          <tr
            v-for="(ingredient, key) in item.ingredients"
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
          @click="toggleDrawer()">
            Cancel
        </v-btn>
        <v-btn
          primary
          large
          color="success"
          @click="submit()">
            Order
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
      item: null
    },
    methods: {
      showDetails(item) {
        this.item = item;
      },
      toggleDrawer(){
        this.$emit('toggle-right-drawer');
      },
      submit(){
        alert("You ordered a " + this.item.name + ". Please wait while Bengtsberg is preparing your drink.");
      }
    }
  }
</script>

<style>
</style>
