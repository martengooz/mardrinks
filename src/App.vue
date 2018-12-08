<template>
  <v-app id="app">
    <Menu />
    <v-content>
      <router-view/>
    </v-content>
  </v-app>
</template>

<script>
// @ is an alias to /src
import Menu from '@/components/Menu.vue'

export default {
  components: {
    Menu
  }
}
</script>
