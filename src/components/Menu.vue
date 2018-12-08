<template>
  <div>
    <v-toolbar color="green" app fixed>
     <v-toolbar-side-icon @click.native="drawer = !drawer"></v-toolbar-side-icon>
     <span class="title ml-3 mr-5">Mår<span class="font-weight-light">Drinks</span></span>
     <v-text-field
       solo-inverted
       flat
       hide-details
       label="Search"
       prepend-inner-icon="search"
     ></v-text-field>
     <v-spacer></v-spacer>
   </v-toolbar>
  <v-navigation-drawer
       v-model="drawer"
       fixed
       clipped
       class="grey lighten-4"
       app
     >
       <v-list
         dense
         class="grey lighten-4"
       >
         <template v-for="(item, i) in items">
           <v-layout
             v-if="item.heading"
             :key="i"
             row
             align-center
           >
             <v-flex xs6>
               <v-subheader v-if="item.heading">
                 {{ item.heading }}
               </v-subheader>
             </v-flex>
           </v-layout>
           <v-divider
             v-else-if="item.divider"
             :key="i"
             dark
             class="my-3"
           ></v-divider>
           <v-list-tile
             v-else
             :key="i"
             @click=""
           >
             <v-list-tile-action>
               <v-icon>{{ item.icon }}</v-icon>
             </v-list-tile-action>
             <v-list-tile-content>
               <v-list-tile-title class="grey--text">
                 {{ item.text }}
               </v-list-tile-title>
             </v-list-tile-content>
           </v-list-tile>
         </template>
       </v-list>
     </v-navigation-drawer>

  </div>
</template>
<script>
  export default {
    data: () => ({
      drawer: null,
      items: [
        { icon: 'lightbulb_outline', text: 'Notes' },
        { icon: 'touch_app', text: 'Reminders' },
        { divider: true },
        { heading: 'Labels' },
        { icon: 'help', text: 'Help' },
        { icon: 'phonelink', text: 'App downloads' },
        { icon: 'keyboard', text: 'Keyboard shortcuts' }
      ]
    }),
    props: {
      source: String,
    }
  }
</script>

<style>
  .v-navigation-drawer__border {
      display: none
    }
</style>
