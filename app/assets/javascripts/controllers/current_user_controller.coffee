Hdc.CurrentuserController = Ember.ObjectController.extend
  loggedin: null
  username: null


  login: ()->
    username = @get('username')
    user = Hdc.User.find(username)
    user.one "didLoad", ()=>
      user.set('score', 0) unless user.get('score')
      user.get('transaction').commit()
      @set('loggedin', true)
      @set('content', user)

