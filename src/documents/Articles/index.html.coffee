---
title: Articles
layout: default
pageOrder: 1
subTitle: 'Some things that I''ve written'
keywords:[]
---

currentYear = ""
div class:"container", ->
	div class:"row", ->
		div  ->
			h2 "Archive"
			div class:"col-md-6", ->
				@partial('search')



	for document in @getCollection('posts').toJSON()
		date = @moment(document.date)
		year = date.format('YYYY')

		article class: "row articleList", ->
			div class: "row", ->
				if year != currentYear
					div class: "col-md-1", year
					currentYear = year
				else
					div class: "col-md-1", ""

				div class: "col-md-1", date.format("MMM D")
				div class: "col-md-10", ->
					a href: document.url, document.title

			div class: "row", ->
				p class: "col-md-10 col-md-offset-2", document.subTitle
