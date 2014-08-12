#
# grunt-t2c
# https://github.com/johanjordaan/grunt-t2c
#
# Copyright (c) 2014 Johan Jordaan
# Licensed under the MIT license.

'use strict';

module.exports = (grunt) ->
  # Project configuration.
  grunt.initConfig
    jshint:
      all: [
        #'Gruntfile.js',
        'tasks/*.js',
        '<%= nodeunit.tests %>'
      ]
      options:
        jshintrc: '.jshintrc'

    # Before generating any new files, remove any previously-created files.
    clean:
      tests: ['tmp']

    # Configuration to be run (and then tested).
    deadscript:
      build:
        expand: true,
        cwd: './examples',
        src: ['**/*.ls'],
        dest: './examples',
        ext: '.js'
        extDot : 'last'

    # Unit tests.
    nodeunit:
      tests: ['test/*_test.js']

  # Actually load this plugins task(s).
  grunt.loadTasks('tasks')

  # These plugins provide necessary tasks.
  grunt.loadNpmTasks('grunt-contrib-jshint')
  grunt.loadNpmTasks('grunt-contrib-clean')
  grunt.loadNpmTasks('grunt-contrib-nodeunit')

  grunt.registerTask('examples',['deadscript'])
  grunt.registerTask('test', ['clean','examples','nodeunit'])
  grunt.registerTask('default', ['examples']);
