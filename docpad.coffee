docpadConfig = {

  templateData:
      site:
        # Properties
        url:"http://zaudtke.github.io/"
        title: "Al Zaudtke"
        author: "Al Zaudtke"
        email: "zaudtke@gmail.com"
        discription: "I Has No Catchy Phrase for here"

        #Helper functions
        getPreparedTitle: ->
          if @document.title
            "#{@document.title} | #{@site.title}"
          else
            @site.title

        getPreparedDescription: ->
          @document.subTitle or @site.description





  plugins:
    ghpages:
      deployRemote: 'target'
      deployBranch: 'master'
}

module.exports = docpadConfig
