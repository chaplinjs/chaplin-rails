# Require HAML Coffee templates
#= require hamlcoffee
#= require_tree ./templates

# Bootstrap the application
require [
  'hello_world_application'
  'routes'
  # Require base controllers manually so they are
  # precompiled by the Rails Asset Pipeline
  'controllers/hello_world_controller'
], (HelloWorldApplication, routes) ->
  'use strict'

  new HelloWorldApplication
    # Set your application name here so the document title is set to
    # “Controller title – Site title” (see Chaplin.Layout#adjustTitle)
    title: 'Chaplin Example Application'
    # The routes for this app
    routes: routes
