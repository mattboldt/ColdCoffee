module.exports = (grunt) ->

  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-sass')

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    watch:
      coffee:
        files: 'assets/javascripts/**/*.coffee'
        tasks: ['coffee:compile']
        options:
          livereload: true
      sass:
        files: 'assets/stylesheets/**/*.scss'
        tasks: ['sass:compile']
        options:
          livereload: true

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


  grunt.registerTask('default', ['watch'])
