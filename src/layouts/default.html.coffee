doctype 5
html ->
  head ->
    title @getPreparedTitle()
    meta charset: "utf-8"
    meta "http-equiv": "content-type", "content": "text/html; charset=utf-8"
    meta "http-equiv": "X-UA-Compatible", "content": "IE=edge,chrome=1"

    meta "name": "description", "content": @getPreparedDescription()
    meta "name": "keywords", "content":""
    meta "name": "author", "content": @site.author
    text @getBlock('meta').toHTML()
    meta "name": "viewport", "content": "width=device-width, initial-scale=1.0"

    ie "lt IE 9", ->
      script async: yes, src: "http://html5shim.googlecode.com/svn/trunk/html5.js"

    text @getBlock('styles').add(@site.styles).toHTML()

    body ->
      div class:"pagewrapper", ->
        header ->
          div class:"widewrapper masthead", ->
            div class:"container", ->
              div class:"logo", ->
                a  href: @site.url, @site.title

                div class:"catchphrase", @site.catchphrase

              div id:"mobile-nav-toggle", class:"pull-right",->
                a href:"#", "data-toggle":"collapse", "data-target":".tales-nav .navbar-collapse",->
                  i class:"fa fa-bars"

              nav class:"pull-right tales-nav",->
                div class:"collapse navbar-collapse", ->
                  ul class:"nav nav-pills navbar-nav",->
                    li ->
                      a href:"/Blog", "Blog"
                    li ->
                      a href:"/About", "About"
                    li class:"hidden-xs", ->
                      a href:"https://twitter.com/AlZaudtke", ->
                        i class:"fa fa-twitter"
                    li class:"hidden-xs", ->
                      a href:"https://github.com/zaudtke", ->
                        i class:"fa fa-github"

          div class:"widewrapper subheader", ->
            div class:"container", ->
              div class:"tales-breadcrumb", ->
                @document.title

              div class:"tales-searchbox hidden-xs", ->
                form role:"search", action:"http://google.com/search", method:"get", "accept-charset":"utf-8", ->
                  button class:"searchbutton", type:"submit", ->
                    i class:"fa fa-search"
                  input class:"searchfield", name:"q", type:"search", placeholder:"Search"
                  input type:"hidden", name:"q", value:"site:zaudtke.com"



        div class:"widewrapper main", ->
          div class:"container", ->
            div class:"row", ->
              text @content

      footer id:"footer", ->
        div class:"widewrapper copyright", ->
          div class:"container", ->
            "Copyright &copy; <script>var now = new Date();document.write(now.getFullYear());</script> Allen Zaudtke"

      text @getBlock('scripts').add(@site.scripts).toHTML()
