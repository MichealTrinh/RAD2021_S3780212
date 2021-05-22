Micheal Trinh, S3780212
80+

	Date	2021-05-22
	
![image](https://user-images.githubusercontent.com/48667610/119241696-c129d000-bb9b-11eb-8bec-2b4e2f6ea6d6.png)


https://gentle-ocean-91057.herokuapp.com/

Build Log:

-----> Building on the Heroku-20 stack
-----> Using buildpack: heroku/ruby
-----> Ruby app detected
-----> Installing bundler 2.2.16
-----> Removing BUNDLED WITH version in the Gemfile.lock
-----> Compiling Ruby/Rails
-----> Using Ruby version: ruby-3.0.0
-----> Installing dependencies using bundler 2.2.16
       Running: BUNDLE_WITHOUT='development:test' BUNDLE_PATH=vendor/bundle BUNDLE_BIN=vendor/bundle/bin BUNDLE_DEPLOYMENT=1 bundle install -j4
       Using rake 13.0.3
       Using concurrent-ruby 1.1.8
       Using i18n 1.8.10
       Using minitest 5.14.4
       Using tzinfo 2.0.4
       Using zeitwerk 2.4.2
       Using activesupport 6.1.3.2
       Using builder 3.2.4
       Using erubi 1.10.0
       Using racc 1.5.2
       Using nokogiri 1.11.3 (x86_64-linux)
       Using rails-dom-testing 2.0.3
       Using crass 1.0.6
       Using loofah 2.9.1
       Using rails-html-sanitizer 1.3.0
       Using actionview 6.1.3.2
       Using rack 2.2.3
       Using rack-test 1.1.0
       Using actionpack 6.1.3.2
       Using nio4r 2.5.7
       Using websocket-extensions 0.1.5
       Using websocket-driver 0.7.3
       Using actioncable 6.1.3.2
       Using globalid 0.4.2
       Using activejob 6.1.3.2
       Using activemodel 6.1.3.2
       Using activerecord 6.1.3.2
       Using marcel 1.0.1
       Using mini_mime 1.0.3
       Using activestorage 6.1.3.2
       Using mail 2.7.1
       Using actionmailbox 6.1.3.2
       Using actionmailer 6.1.3.2
       Using actiontext 6.1.3.2
       Using bcrypt 3.1.16
       Using msgpack 1.4.2
       Using bootsnap 1.7.5
       Using bundler 2.2.16
       Using ffi 1.15.0
       Using jbuilder 2.11.2
       Using method_source 1.0.0
       Using pg 1.2.3
       Using puma 5.3.0
       Using rack-proxy 0.6.5
       Using thor 1.1.0
       Using railties 6.1.3.2
       Using sprockets 4.0.2
       Using sprockets-rails 3.2.2
       Using rails 6.1.3.2
       Using sassc 2.4.0
       Using tilt 2.0.10
       Using sassc-rails 2.1.2
       Using sass-rails 6.0.0
       Using semantic_range 3.0.0
       Using turbolinks-source 5.2.0
       Using turbolinks 5.2.1
       Using webpacker 5.3.0
       Bundle complete! 19 Gemfile dependencies, 57 gems now installed.
       Gems in the groups 'development' and 'test' were not installed.
       Bundled gems are installed into `./vendor/bundle`
       Bundle completed (0.56s)
       Cleaning up the bundler cache.
-----> Installing node-v12.16.2-linux-x64
-----> Installing yarn-v1.22.4
-----> Detecting rake tasks
-----> Preparing app for Rails asset pipeline
       Running: rake assets:precompile
       yarn install v1.22.4
       [1/4] Resolving packages...
       [2/4] Fetching packages...
       info fsevents@2.3.2: The platform "linux" is incompatible with this module.
       info "fsevents@2.3.2" is an optional dependency and failed compatibility check. Excluding it from installation.
       info fsevents@1.2.13: The platform "linux" is incompatible with this module.
       info "fsevents@1.2.13" is an optional dependency and failed compatibility check. Excluding it from installation.
       [3/4] Linking dependencies...
       [4/4] Building fresh packages...
       Done in 25.57s.
       Compiling...
       Compiled all packs in /tmp/build_0933a33b/public/packs
       Though the "loose" option was set to "false" in your @babel/preset-env config, it will not be used for @babel/plugin-proposal-private-methods since the "loose" mode option was set to "true" for @babel/plugin-proposal-class-properties.
       The "loose" option must be the same for @babel/plugin-proposal-class-properties, @babel/plugin-proposal-private-methods and @babel/plugin-proposal-private-property-in-object (when they are enabled): you can silence this warning by explicitly adding
       	["@babel/plugin-proposal-private-methods", { "loose": true }]
       to the "plugins" section of your Babel config.
       Though the "loose" option was set to "false" in your @babel/preset-env config, it will not be used for @babel/plugin-proposal-private-methods since the "loose" mode option was set to "true" for @babel/plugin-proposal-class-properties.
       The "loose" option must be the same for @babel/plugin-proposal-class-properties, @babel/plugin-proposal-private-methods and @babel/plugin-proposal-private-property-in-object (when they are enabled): you can silence this warning by explicitly adding
       	["@babel/plugin-proposal-private-methods", { "loose": true }]
       to the "plugins" section of your Babel config.
       Though the "loose" option was set to "false" in your @babel/preset-env config, it will not be used for @babel/plugin-proposal-private-methods since the "loose" mode option was set to "true" for @babel/plugin-proposal-class-properties.
       The "loose" option must be the same for @babel/plugin-proposal-class-properties, @babel/plugin-proposal-private-methods and @babel/plugin-proposal-private-property-in-object (when they are enabled): you can silence this warning by explicitly adding
       	["@babel/plugin-proposal-private-methods", { "loose": true }]
       to the "plugins" section of your Babel config.
       Though the "loose" option was set to "false" in your @babel/preset-env config, it will not be used for @babel/plugin-proposal-private-methods since the "loose" mode option was set to "true" for @babel/plugin-proposal-class-properties.
       The "loose" option must be the same for @babel/plugin-proposal-class-properties, @babel/plugin-proposal-private-methods and @babel/plugin-proposal-private-property-in-object (when they are enabled): you can silence this warning by explicitly adding
       	["@babel/plugin-proposal-private-methods", { "loose": true }]
       to the "plugins" section of your Babel config.
       Though the "loose" option was set to "false" in your @babel/preset-env config, it will not be used for @babel/plugin-proposal-private-methods since the "loose" mode option was set to "true" for @babel/plugin-proposal-class-properties.
       The "loose" option must be the same for @babel/plugin-proposal-class-properties, @babel/plugin-proposal-private-methods and @babel/plugin-proposal-private-property-in-object (when they are enabled): you can silence this warning by explicitly adding
       	["@babel/plugin-proposal-private-methods", { "loose": true }]
       to the "plugins" section of your Babel config.
       Though the "loose" option was set to "false" in your @babel/preset-env config, it will not be used for @babel/plugin-proposal-private-methods since the "loose" mode option was set to "true" for @babel/plugin-proposal-class-properties.
       The "loose" option must be the same for @babel/plugin-proposal-class-properties, @babel/plugin-proposal-private-methods and @babel/plugin-proposal-private-property-in-object (when they are enabled): you can silence this warning by explicitly adding
       	["@babel/plugin-proposal-private-methods", { "loose": true }]
       to the "plugins" section of your Babel config.
       Though the "loose" option was set to "false" in your @babel/preset-env config, it will not be used for @babel/plugin-proposal-private-methods since the "loose" mode option was set to "true" for @babel/plugin-proposal-class-properties.
       The "loose" option must be the same for @babel/plugin-proposal-class-properties, @babel/plugin-proposal-private-methods and @babel/plugin-proposal-private-property-in-object (when they are enabled): you can silence this warning by explicitly adding
       	["@babel/plugin-proposal-private-methods", { "loose": true }]
       to the "plugins" section of your Babel config.
       
       Hash: 62b615f014b2df971407
       Version: webpack 4.46.0
       Time: 5914ms
       Built at: 05/22/2021 9:43:11 PM
                                               Asset       Size  Chunks                         Chunk Names
              js/application-b609faf87665ecc17dbf.js     71 KiB       0  [emitted] [immutable]  application
           js/application-b609faf87665ecc17dbf.js.br   15.7 KiB          [emitted]              
           js/application-b609faf87665ecc17dbf.js.gz   18.2 KiB          [emitted]              
          js/application-b609faf87665ecc17dbf.js.map    210 KiB       0  [emitted] [dev]        application
       js/application-b609faf87665ecc17dbf.js.map.br     45 KiB          [emitted]              
       js/application-b609faf87665ecc17dbf.js.map.gz   52.2 KiB          [emitted]              
                                       manifest.json  364 bytes          [emitted]              
                                    manifest.json.br  126 bytes          [emitted]              
                                    manifest.json.gz  142 bytes          [emitted]              
       Entrypoint application = js/application-b609faf87665ecc17dbf.js js/application-b609faf87665ecc17dbf.js.map
       [0] (webpack)/buildin/module.js 552 bytes {0} [built]
       [4] ./app/javascript/packs/application.js 508 bytes {0} [built]
       [5] ./app/javascript/channels/index.js 205 bytes {0} [built]
       [6] ./app/javascript/channels sync _channel\.js$ 160 bytes {0} [built]
       [7] ./app/javascript/src/functions.js 2.25 KiB {0} [built]
           + 3 hidden modules
       
       Asset precompilation completed (36.41s)
       Cleaning assets
       Running: rake assets:clean
-----> Detecting rails configuration
###### WARNING:
       You set your `config.assets.compile = true` in production.
       This can negatively impact the performance of your application.
       
       For more information can be found in this article:
         https://devcenter.heroku.com/articles/rails-asset-pipeline#compile-set-to-true-in-production
       
###### WARNING:
       There is a more recent Ruby version available for you to use:
       
       3.0.1
       
       The latest version will include security and bug fixes. We always recommend
       running the latest version of your minor release.
       
       Please upgrade your Ruby version.
       
       For all available Ruby versions see:
         https://devcenter.heroku.com/articles/ruby-support#supported-runtimes
###### WARNING:
       No Procfile detected, using the default web server.
       We recommend explicitly declaring how to boot your server process via a Procfile.
       https://devcenter.heroku.com/articles/ruby-default-web-server
-----> Discovering process types
       Procfile declares types     -> (none)
       Default types for buildpack -> console, rake, web
-----> Compressing...
       Done: 78.5M
-----> Launching...
       Released v20
       https://gentle-ocean-91057.herokuapp.com/ deployed to Heroku



Using:
 - rvm 1.29.12
 - Ruby 3.0.0p0
 - Rails 6.1.3.2

To deploy app:
 - go to the app's directory and run $ git push heroku master.
 - Then run $ heroku run rails db:migrate to update the db schema.
 - Then run $ heroku run rails db:seed to add the db data.
 - Go to https://gentle-ocean-91057.herokuapp.com/ to view the deployed app.
