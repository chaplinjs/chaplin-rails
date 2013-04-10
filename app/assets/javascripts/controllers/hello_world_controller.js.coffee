define [
  'controllers/base/controller'
  'models/hello_world'
  'views/hello_world_view'
], (Controller, HelloWorld, HelloWorldView) ->
  'use strict'

  class HelloWorldController extends Controller

    title: 'Hello World'

    historyURL: (params) ->
      ''

    show: (params) ->
      @model = new HelloWorld()
      @view = new HelloWorldView model: @model
