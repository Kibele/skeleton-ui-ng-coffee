# Karma configuration

module.exports = (config) ->
  config.set

    # base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: ''


    # frameworks to use
    # available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['jasmine']


    # list of files / patterns to load in the browser
    files: [
      'dist/assets/lib/jquery-2.1.3.min.js',
      'dist/assets/lib/json2.js',
      'dist/assets/lib/bootstrap-3.3.4/js/bootstrap.min.js',
      'dist/assets/lib/angular.min.js',
      'dist/assets/lib/angular-resource.min.js',
      'dist/assets/lib/angular-route.min.js',
      'dist/assets/lib/angular-animate-1.3.14.min.js',
      'dist/assets/lib/angular-strap-2.2.1.min.js',
      'dist/assets/lib/angular-strap-2.2.1.tpl.min.js',
      'dist/assets/app/js/app*.min.js',
      'src/test/lib/jasmine-jquery-2.1.0.js',
      'src/test/lib/angular-mocks.js',
      'src/test/app/coffee/**/*Spec.coffee'
    ]


    # list of files to exclude
    exclude: [
    ]


    # preprocess matching files before serving them to the browser
    # available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors: {
      '**/*.coffee': ['coffee']
    }


    # test results reporter to use
    # possible values: 'dots', 'progress'
    # available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: ['progress']


    # web server port
    port: 9876


    # enable / disable colors in the output (reporters and logs)
    colors: true


    # level of logging
    # possible values:
    # - config.LOG_DISABLE
    # - config.LOG_ERROR
    # - config.LOG_WARN
    # - config.LOG_INFO
    # - config.LOG_DEBUG
    logLevel: config.LOG_INFO


    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: false


    # start these browsers
    # available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: ['PhantomJS']


    # Continuous Integration mode
    # if true, Karma captures browsers, runs the tests and exits
    singleRun: true
