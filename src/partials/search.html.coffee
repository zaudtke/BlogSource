
div class:"hidden-xs", ->
  form role:"search", action:"http://google.com/search", method:"get", "accept-charset":"utf-8", ->
    input class:"form-control", name:"q", type:"search", placeholder:"Search"
    input type:"hidden", name:"q", value:"site:zaudtke.com"
