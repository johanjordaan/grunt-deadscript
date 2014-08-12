//
// grunt-t2c
// https://github.com/johanjordaan/grunt-deadscript
//
// Copyright (c) 2014 Johan Jordaan
// Licensed under the MIT license.

module.exports = function(grunt) {
  return grunt.registerMultiTask('deadscript', 'Grunt deadscript(livescript) plugin.', function() {
    var files = [];
    var options = {};

    var compile = function(srcCode, options) {
      try {
        return require('LiveScript').compile(srcCode, options);
      } catch (e) {
        grunt.log.error(e);
        grunt.fail.warn('LiveScript failed to compile.');
      }
    };

    return this.files.forEach(function(f) {
      var new_src, src;
      src = grunt.file.read(f.src[0]);
      new_src = compile(src, options);
      grunt.file.write(f.dest, new_src);
      return grunt.log.writeln('File "' + f.dest.cyan + '" created.');
    });

  });
};
