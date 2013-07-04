window.ApplicationController = (params={}) ->
  that = this
  $('body').on 'click','.main-nav a', (e) ->
    that.handleNavClick(this)

window.ApplicationController.prototype.handleNavClick = (sender) ->
  $link = $(sender)
  $('.main-nav a').removeClass('selected')
  $link.addClass('selected')
  $('.panel').removeClass('visible')
  $('.' + $link.data('page')).addClass('visible')


window.application = new ApplicationController()

