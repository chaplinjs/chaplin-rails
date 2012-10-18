# Boilerplate Rails Application with Backbone.js, Chaplin.js and Require.js

This is a Hello World example application for [Chaplin.js](https://github.com/chaplinjs/chaplin) packed in a Rails application.

## Features

- Using [HAML](http://haml.info/), [Sass](http://sass-lang.com/) and [CoffeeScript](http://coffeescript.org)
- Using jQuery, Underscore, Backbone, Chaplin
- Using a local copy of [requirejs-rails](https://github.com/jwhitley/requirejs-rails) 0.9.0 with r.js 2.1.1
- Using [HAML Coffee](https://github.com/netzpirat/haml-coffee) as templating engine (see also [Haml Coffee Assets](https://github.com/netzpirat/haml_coffee_assets))
- The application name is `ChaplinExample`. You might want to change this and several configuration files before using it.
- Asset precompilation for the production environment works fine – the whole JavaScript will be compiled into one JavaScript file.

## Architectural Documentation

### Directory Structure

This example has a standard Chaplin MVC directory structure:

- `assets/javascripts/models`
- `assets/javascripts/views`
- `assets/javascripts/controllers`
- `assets/javascripts/libs`

All vendor libraries like jQuery and Backbone are located `js/vendor/`.

### Application Startup

There are two special files which are responsible for the application bootstrap:

- `assets/javascripts/hello_world_application.js.coffee`
- `assets/javascripts/routes.js.coffee`

`hello_world_application.coffee` is the application root class which inherits from `Chaplin.Application`. It starts up all Chaplin core modules and starts the routing. It is loaded and instantiated in `assets/javascripts/application.js.coffee`.

`routes.coffee` contains all application routes which map URLs to controller actions.

### Templating

Since Chaplin is template-engine agnostic, you have to decide which templating solution you want to use and how you want to load the templates. This example uses [HAML Coffee](https://github.com/netzpirat/haml-coffee) templates. They are automatically compiled and included in `assets/javascripts/application.js.coffee`.

Chaplin expects that views implement the `getTemplateFunction` method which needs to return the actual templating function. Since all views in this example use the same templating solution, `getTemplateFunction` is provided once by two base classes all other views inherit from:

- `assets/javascripts/views/base/view.js.coffee`
- `assets/javascripts/views/base/collection_view.js.coffee`

The actual `.hamlc` template files are located in the `assets/templates` directory.

### Application-specific Extensions

To ease the development, this repository also provides application-specific base classes for models, collections and controllers. They inherit from the Chaplin base classes:

- `assets/javascripts/models/base/model.js.coffee`
- `assets/javascripts/models/base/collection.js.coffee`
- `assets/javascripts/controllers/base/controller.js.coffee`

Furthermore, `assets/javascripts/lib/support.js.coffee` and `assets/javascripts/lib/utils.js.coffee` demonstrate how to extend the feature testing and utility files of Chaplin.

Last but not least, this example uses a specific `Layout` class which can be found in `assets/javascripts/views/layout.js.coffee`.

## Links

- [Chaplin’s main repository](https://github.com/chaplinjs/chaplin)
- [CoffeeScript Boilerplate](https://github.com/chaplinjs/chaplin-boilerplate), Handlebars templating
- [Plain JavaScript Boilerplate](https://github.com/chaplinjs/chaplin-boilerplate-plain), Handlebars templating

## [The Cast](https://github.com/chaplinjs/chaplin/blob/master/AUTHORS.md#the-cast)

## [The Producers](https://github.com/chaplinjs/chaplin/blob/master/AUTHORS.md#the-producers)
