<template>
  <div class="hello" @click="trigger">
   <!-- parent: {{title}} -->
   obj: {{propdata}}
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'hi',
  props: ['propdata'],
  // inject: ['parent'],
  data() {
    return {
      // injectchild: this.parent
    }
  },
  computed: {
    newObj() {
      return this.bindprop
    }
  },
  created: () => {
    

  },
  methods: {
    trigger(){
      this.propdata.title = 'fei'
      // this.propdata[0] = 'change'
      //       // this.propdata.push('change')
      console.log(this.propdata);
      
      // this.$emit('update:title', 'women')
      // this.bindprop = 'titi'
      // this.bindprop = 'tiantian'
    }
  },
  watch: {
    
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
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
