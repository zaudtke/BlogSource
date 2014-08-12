---
layout: default
---

article id: "post", class: "post", ->

  div class: "post-content container",
    div class: "date text-muted text-right", ->
        @document.date.toDateString()
    div ->
      @content
