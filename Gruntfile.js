module.exports = function(grunt) {

    grunt.initConfig({
     
jshint: {
    files: ['Gruntfile.js', 'Scripts/myTestJsFile.js'],
    options: {
        // options here to override JSHint defaults
        globals: {
            jQuery: true,
            console: true,
            module: true,
            document: true
        }
    }
},
      watch: {
        files: ['<%= jshint.files %>'],
        tasks: ['jshint']
      }
    });
  
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-watch');
  
    grunt.registerTask('default', ['jshint']);
  
  };