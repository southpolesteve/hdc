Hdc.IndexRoute = Ember.Route.extend

  renderTemplate: ()->
    controller = this.controllerFor('users')
    controller.set('content', Hdc.User.find())