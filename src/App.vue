<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png"/>
    <div class="tabs">
      <div @click="trigger('ComA')" :class="{active: currentTab==='ComA'}">ComA</div>
      <div @click="trigger('HelloWorld')" :class="{active: currentTab==='HelloWorld'}">HelloWorld</div>
    </div>
    <keep-alive exclude="ComA">
      <component :is="currentTab"></component>
    </keep-alive>
    <EventBus :propdata="doc"/>
    objobj: {{objobj}}
    <!-- <EventBus :title.sync="doc.title" :bindprop="objname"/> -->
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import ComA from './components/ComA.vue'
import EventBus from './components/EventBus.vue'

export default {
  name: 'app',
  components: {
    HelloWorld,
    ComA,
    EventBus
  },
  data: function () {
    return {
      currentTab: 'ComA',
      doc: {
        title: 'hi'
      },
      // doc: ['hi', 'hh', 'hu'],
      objname: 'feifei',
      objobj: {
        name: 'hi'
      }
      // parentName: {name: 'comA'}
    }
  },
  // provide() {
  //   return {
  //     parent: this.parentName
  //   }
  // },
  methods: {
    trigger: function (name) {
      this.currentTab = name
      console.log(this.currentTab);
      this.objobj.name = 'feifeifei'
      // this.parentName.name = name
    }
  }
  
}
</script>

<style>
.active {
  background: yellow;
}
.tabs {
  display: flex;
  justify-content: center;
}
div {
  width: 200px;
}
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
