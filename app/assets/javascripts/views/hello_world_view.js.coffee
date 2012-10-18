define [
  'views/base/view'
], (View, template) ->
  'use strict'

  class HelloWorldView extends View

    templateName: 'hello_world'

    className: 'hello-world'

    # Automatically append to the DOM on render
    container: '#page-container'
    # Automatically render after initialize
    autoRender: true
