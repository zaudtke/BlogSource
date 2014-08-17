div id:"mobile-nav-toggle", class:"pull-right",->
  a
    href:"#"
    data:
      toggle:"collapse"
      target:".tales-nav .navbar-collapse"
    ->
      i class:"fa fa-bars"


nav class:"pull-right tales-nav",->
  div class:"collapse navbar-collapse", ->
    ul class:"nav nav-pills navbar-nav",->
      for document in  @getCollection('pages').toJSON()
        li
          class: ('active' if @document.url is document.url)
          ->
            a href: document.url, document.title 

      li class:"hidden-xs", ->
        a href:"https://twitter.com/AlZaudtke", ->
          i class:"fa fa-twitter"
      li class:"hidden-xs", ->
        a href:"https://github.com/zaudtke", ->
          i class:"fa fa-github"
