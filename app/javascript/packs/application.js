require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap")

import '../stylesheets/application'
import './bootstrap_custom.js'
import '@fortawesome/fontawesome-free/js/all.js'

$(document).on ('turbolinks:load', function () {
    $('.toast').toast({ delay: 3000 })
    $('.toast').toast('show')
})