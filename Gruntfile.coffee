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
      sass:
        files: 'assets/stylesheets/**/*.scss'
        tasks: ['sass:compile']

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


  # 4. Where we tell Grunt what to do when we type "grunt" into the terminal.
  grunt.registerTask('default', ['watch'])
