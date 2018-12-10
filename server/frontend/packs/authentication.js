/* eslint no-console:0 */
console.log('Hello World from authentication')
import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'
import MainAuth from '../MainAuth'
import MdFormGroup from '../src/components/MdFormGroup'

Vue.use(TurbolinksAdapter)

document.addEventListener('turbolinks:load', () => {
  
  const app = new Vue({
    el: '#app',
    components: { 
      MainAuth,
      MdFormGroup
    }
  })
  console.log(app)
})