---
layout: 'default'
title: 'My Blog'
banner: 'Home of Al Zaudtke'
---



div class:"homePageIntro", ->
    img
      src:"/assets/roundselfie.png"
      class:"img-responsive homeimageround"

    h3 "I'm a geek who primarily works on the web, but am expanding my horizons.  I've done some mobile, but hope to become better.  Distributed systems and working outside the MS stack are my priorities at this time... I hope to share with you what I learn as I learn it."



div class:"row homePageList", ->

  div class:"col-md-6", ->



    header ->
      h2 ->
        a href:"/articles/", style:"color:#3498db", ->
          i class:"fa fa-list"
          " Recent Articles"

    div ->
      @partial('search')

    for document in @getCollection('posts').toJSON().slice(0,5)
      article ->
        h3 ->
          a href: document.url, document.title
        p document.subTitle
        p class: "text-right text-muted", ->
          em document.date.toDateString()
