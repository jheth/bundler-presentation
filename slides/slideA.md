!SLIDE bullets

# Gem Bundler #


## Ruby Application Dependency Management
## [http://gembundler.com](http://gembundler.com)
## ![bundler](../images/bundler-small.png)

!SLIDE bullets incremental transition=fade

# Gem Overview #

* [http://rubygems.org](http://rubygems.org)
* A packaged ruby library (lib, bin, test)
* Gemspec File
* Description, version, dependencies, files, etc.

!SLIDE bullets incremental transition=fade

# Gem Management #

 * gem install, update, uninstall
 * Requires root access
	* Caveat: `gem install -i ~/gems showoff`
 * Installed system wide 
	* `gem list`
 * Multiple versions on the same machine
 * Code should specify supported version

!SLIDE bullets incremental transition=fade

# Why Bundler? #

* Documented and tested dependencies
* Don't need root level access
* Remove sysadmins from the picture (they have better things to do)
* Control over development and production environments

!SLIDE bullets incremental transition=fade

# Bundler's Gemfile #

* bundle init
* Starts with the Gemfile
* List out required gems
* Specify exact version, range or no version
* Single or Multiple sources

!SLIDE bullets incremental transition=fade

# Example Gemfile
    @@@ ruby
    source "http://rubygems.org"
    source "http://gems.sentryds.com"
    
    gem 'jabber-bot'
    gem 'nokogiri', '>= 1.4.2'
    gem 'RedCloth', '>= 4.1.0', '< 4.2.0'
    gem 'thin', '~>1.1' # Covers 1.1 - 2.0
    
    gem 'sentryds-util', 
	   :git => 'git://git.sentryds.com/Core/sentryds-util.git'
    
    group :development, :test do
       gem 'mocha'
       gem 'rspec', '2.0.1'
       gem 'rdoc'
    end

!SLIDE bullets incremental transition=fade

# Managing Gems with Bundler #

  * `bundle install`
	* default system location $GEM_PATH
  * `bundle install --path=vendor`
  * `bundle install --path=vendor --without development test`
  * `bundle update [gem-name]`

!SLIDE bullets incremental transition=fade

# Generated Files #

* Gemfile.lock
* .bundle/config
	* bundle config
* vendor
	* bundle check
	* bundle list
	* bundle show rdoc
	* bundle viz (requires graphviz)
	* bundle open jabber-bot
		* set $EDITOR or $BUNDLER_EDITOR


!SLIDE bullets incremental transition=fade

# Your Code + Bundler #

    @@@ ruby
    require 'rubygems'
    require 'bundler/setup'

    require 'jabber-bot'

    config = {...}
    bot = Jabber::Bot.new(config)
    ...
    bot.connect

!SLIDE bullets incremental transition=fade

# Testing / Debugging #

* bundle exec 
	* bundle exec script.rb
* bundle console
	* IRB Sesssion with proper environment


!SLIDE bullets incremental transition=fade

# Create your own Gem #
## bundle gem [gem-name]

    @@@ php
    jheth$ bundle gem carbon
       create  carbon/Gemfile
       create  carbon/Rakefile
       create  carbon/.gitignore
       create  carbon/carbon.gemspec
       create  carbon/lib/carbon.rb
       create  carbon/lib/carbon/version.rb
    Initializating git repo in /Users/jheth/carbon

!SLIDE bullets incremental transition=fade

# Making it functional #

* Rake Tasks (rake -T)
* Update .gemspec
* Add/edit lib and/or bin files
* git add remote
* git push

!SLIDE bullets incremental transition=fade

# Add to Gemfile #

    @@@ ruby
    gem 'carbon', 
	       :git => 'git://git.sentryds.com/jheth/carbon.git'

    jheth$ bundle install

!SLIDE bullets incremental transition=fade

# Clean Environment #

Bundler's environment changes propogate to forked processes.

    @@@ ruby
    require 'rubygems'
    require 'bundler/setup'

    def run_importer
        Bundler.with_clean_env do
           `ruby importer.rb`
        end
    end

!SLIDE incremental transition=fade

# Resolving Common Errors #

* Error: "Could not find gem 'nokogiri (= 3.2.1) ruby' in any of the gem sources listed in your Gemfile."  
* Possible Causes:  
	* Gemfile changed and necessary gems are not installed.  
	* Specified gem version no longer exists in any repositories.  
	* You typed the name of the gem wrong.
* Solution: svn update / git pull && bundle install

!SLIDE incremental transition=fade

# Resolving Common Errors #

* Error: It's prompting me for a root password?
* Cause: Bundler installs to the default system location. 
* Solution: Run bundle install with the --path argument.

!SLIDE incremental transition=fade

# Resolving Common Errors

* Error: "You have already activated rake 0.9.2, but your Gemfile requires rake 0.8.7. Using bundle exec may solve this."
* Reason: The system Rake (`gem list`) is conflicting with Rake that bundler installed (`bundle list`). 
* Solution: bundle exec [command]


!SLIDE splash

# Questions #
