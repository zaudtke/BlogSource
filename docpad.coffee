docpadConfig = {

  templateData:
      site:
        # Properties
        url:"http://zaudtke.github.io/"
        title: "@AlZaudtke"
        author: "Al Zaudtke"
        email: "zaudtke@gmail.com"
        catchphrase: "I Has No Catchy Phrase for here"

        styles:[
          "//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
          "//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css"
          "//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
          "http://fonts.googleapis.com/css?family=Open+Sans:400,600|PT+Serif:400,400italic"
          "/styles/styles.min.css"
        ]

        scripts:[
          "//cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js"
          "//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"
          "//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"
        ]

      #Helper functions
      getPreparedTitle: ->
        if @document.title
          "#{@document.title} | #{@site.title}"
        else
          @site.title


  collections:
    pages: (database) ->
      database.findAllLive({pageOrder: $exists: true}, [pageOrder:1,title:1])


  plugins:
    ghpages:
      deployRemote: 'target'
      deployBranch: 'master'

    cleanurls:
      trailingSlashes: true
}

module.exports = docpadConfig
