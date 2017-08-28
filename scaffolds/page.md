---
title: {{ title }}
date: {{ date }}
herourl:
heroheader: {{ title }}
herosubheader:
---
<%- partial('_partial/hero', {image: page.herourl, 
                              header: page.heroheader, 
                              subtitle:page.herosubheader}) %>         

<article>
    <div class="container">
    
    </div>
</article>