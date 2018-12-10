/* eslint no-console:0 */

import Vue from 'vue/dist/vue.esm'
import MainApp from '../MainApp'
import TurbolinksAdapter from 'vue-turbolinks'

// Vue.use(TurbolinksAdapter)

document.addEventListener('turbolinks:load', () => {
  const el = document.getElementById('app')
  new Vue({
    el,
    mixins: [
      TurbolinksAdapter
    ],
    components: { MainApp }
  })

})
