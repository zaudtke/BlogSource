module.exports = function(grunt){
    "use strict";

    grunt.initConfig({
        cssmin:{
          minify:{
              expand:true,
              cwd: "out/styles/",
              src:["*.css", "!*.min.css"],
              dest: "out/styles/",
              ext: ".min.css"
            }
          },
          clean:{
            css: ["out/styles/*.less", "out/styles/*.css", "!out/styles/*.min.css"]
          }

    })


    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.registerTask('default', ['cssmin', 'clean']);


}
