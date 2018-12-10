/* eslint no-console:0 */
console.log('Hello World from Webpacker')
import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'
import MainApp from '../MainApp'

Vue.use(TurbolinksAdapter)

document.addEventListener('turbolinks:load', () => {
  
  const app = new Vue({
    el: '#app',
    components: { MainApp }
  })
  console.log(app)
})