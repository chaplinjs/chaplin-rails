define [
  'chaplin'
  'lib/utils'
], (Handlebars, Chaplin, utils) ->
  'use strict'

  # View helpers (HAML Coffee in this case)
  # ---------------------------------------

  HAML.globals = ->
    {
      #someProperty: 'foo'
      #someMethod: ->
    }

  null
