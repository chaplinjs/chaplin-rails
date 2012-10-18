#= require hamlcoffee
#= require_tree ./templates

# Bootstrap the application
require [
  'hello_world_application'
], (HelloWorldApplication) ->
  'use strict'

  app = new HelloWorldApplication()
  app.initialize()
