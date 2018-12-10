const { environment } = require('@rails/webpacker')
const vue =  require('./loaders/vue')

environment.config.set('output.library', ['Packs', '[name]'])
environment.config.set('output.libraryTarget', 'var')

environment.loaders.append('vue', vue)
module.exports = environment
