ready = ->
  Typed.new '.element',
    strings: [
      'Creating a website is quite the challenge but with the correct tools anyone can create one'
      "Here you will see the last month of work on creating the website you see before you"
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready