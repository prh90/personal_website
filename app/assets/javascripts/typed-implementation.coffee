ready = ->
  Typed.new '.element',
    strings: [
      'I was told it was never too late to do what I love'
      'so I chose to become a Web Developer and help create beautiful things.'
    ]
    typeSpeed: 30
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
