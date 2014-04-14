module.exports = (grunt) ->

  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-concat')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-sass')

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    coffee:
      compile:
        expand: true,
        flatten: true,
        src: ['assets/javascripts/*.coffee'],
        dest: 'assets/javascripts/',
        ext: '.js'

    sass:
      compile:
        expand: true,
        flatten: true,
        src: ['assets/stylesheets/main.scss'],
        dest: 'assets/stylesheets/',
        ext: '.css'

    # concat:
    #   options:
    #     # define a string to put between each file in the concatenated output
    #     separator: ';'
    #   dist:
    #     src: ['assets/javascripts/**/*.js']
    #     dest: 'assets/javascripts/main.js'

    watch:
      coffee:
        files: 'assets/javascripts/**/*.coffee'
        tasks: ['coffee:compile']
      sass:
        files: 'assets/stylesheets/**/*.scss'
        tasks: ['sass:compile']
        options:
          livereload: true


  grunt.registerTask('default', ['watch'])
