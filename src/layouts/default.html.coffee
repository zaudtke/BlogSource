doctype 5
html ->
  head ->
    title @getPreparedTitle()
    meta charset: "utf-8"
    meta "http-equiv": "content-type", "content": "text/html; charset=utf-8"
    meta "http-equiv": "X-UA-Compatible", "content": "IE=edge,chrome=1"

    meta "name": "description", "content": @getPreparedDescription()
    meta "name": "keywords", "content":@getPreparedKeywords()
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
                em ->
                  a  href: @site.url, @site.title

                div class:"catchphrase", @site.catchphrase

              @partial('menu')


        div class:"widewrapper main", ->
          div class:"container", ->
              text @content

      footer id:"footer", ->
        div class:"widewrapper copyright", ->
          div class:"container", ->
            "Copyright &copy; <script>var now = new Date();document.write(now.getFullYear());</script> Allen Zaudtke"

      text @getBlock('scripts').add(@site.scripts).toHTML()
