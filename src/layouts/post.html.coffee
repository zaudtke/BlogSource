---
layout: default
---

article id: "blog-post", class: "post", ->

  div class: "post container",
    div class: "date text-muted text-right", ->
        @document.date.toDateString()
    div ->
      @content
