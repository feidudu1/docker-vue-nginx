<template>
  <div class="A">
    <div @click="item = 'a'" :class="{active: item==='a'}">a</div>
    <div @click="item = 'b'" :class="{active: item==='b'}">b</div>
    <div @click="item = 'c'" :class="{active: item==='c'}">c</div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'ComA',
  data: function () {
    return {
      item: 'a'
    }
  },
  created: () => {


  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.active {
  color: red;
  font-size: 30px;
}
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
