# grunt-t2c ![Travis CI Status](https://api.travis-ci.org/johanjordaan/grunt-deadscript.svg?branch=master "Travis CI Status")

> Grunt deadscript(livescript) plugin.

## Getting Started
This plugin requires Grunt `~0.4.5`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-deadscript --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-deadscript');
```

## The "t2c" task

### Overview
In your project's Gruntfile, add a section named `t2c` to the data object passed into `grunt.initConfig()`.

```coffee
grunt.initConfig
  deadscript:
    build:
      expand: true,
      cwd: './examples',
      src: ['**/*.ls'],
      dest: './examples',
      ext: '.js'
      extDot : 'last'

```

### Options


### Usage Examples


## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).
