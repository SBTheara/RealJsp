<template>
  <v-app id="inspire" >
    <v-navigation-drawer v-model="drawer" app>
      <v-list-item>
        <v-list-item-content>
          <v-list-item-title class="text-h6 py-5">
            My app
          </v-list-item-title>
          <v-list-item-subtitle>
            The wieldest app in the world
          </v-list-item-subtitle>
        </v-list-item-content>
      </v-list-item>

      <v-divider></v-divider>

      <v-list dense nav>
        <v-list-item v-for="item in items" :key="item.title" :to="item.to" link>
          <v-list-item-icon>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar app color="#6A76AB" dark src="https://picsum.photos/1920/1080?random" :height="100">
      <template v-slot:img="{ props }">
        <v-img v-bind="props" gradient="to top right, rgba(100,115,201,.7), rgba(25,32,72,.7)"></v-img>
      </template>

      <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>

      <v-toolbar-title>Title</v-toolbar-title>

      <v-spacer></v-spacer>

      <v-btn icon>
        <v-icon>mdi-magnify</v-icon>
      </v-btn>

      <v-btn icon :color="favourite" @click="islike" stacked>
        <v-badge content="2" color="error">
          <v-icon>mdi-heart</v-icon>
        </v-badge>
      </v-btn>

      <v-menu bottom left transition="scroll-x-reverse-transition">
        <template v-slot:activator="{ on, attrs }">
          <v-btn icon color="yellow" v-bind="attrs" v-on="on">
            <v-icon>mdi-dots-vertical</v-icon>
          </v-btn>
        </template>
        <div id="option" v-for="(choice, i) in options" :key="i">
          <v-list>
            <v-list-item @click="getOption" :to="choice.to">
              <v-list-item-title>{{ choice.choice }}</v-list-item-title>
            </v-list-item>
          </v-list>
        </div>
      </v-menu>

    </v-app-bar>

    <v-main>
      <router-view></router-view>
    </v-main>
  </v-app>
</template>

<script>
export default {
  data: () => ({
    drawer: null,
    isFavourite: false,
    favourite: '',
    items: [
      { title: 'Home', icon: 'mdi-home-circle', to: "/" },
      { title: 'Chat', icon: 'mdi-chat', to: "/chat" },
      { title: 'About', icon: 'mdi-help-box', to: "/about" },
      { title: 'Task', icon: 'mdi-checkbox-marked-circle-auto-outline', to: "/task" },
    ],
    options: [
      { choice: 'Setting', to: '/' },
      { choice: 'Help', to: '/about' },
    ],
  }),
  methods: {
    getOption() {
      alert("you have click for get action")
    },
    islike() {
      this.isFavourite = !this.isFavourite;
      if (this.isFavourite === true) {
        return this.favourite = 'red';
      }
      return this.favourite = '';
    }
  }
}
</script>