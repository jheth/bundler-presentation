!SLIDE bullets

# Gem Bundler #


## Ruby Application Dependency Management
## [http://gembundler.com](http://gembundler.com)
## ![bundler](../images/bundler-small.png)

!SLIDE bullets incremental transition=fade

# Gem Overview #

* [http://rubygems.org](http://rubygems.org)
* A packaged ruby library.
* Gemspec File
* Describes version, dependencies, files, etc.

!SLIDE bullets incremental transition=fade

# Gem Management #

* gem install, update, uninstall
* Requires root access
* Installed system wide (gem list)
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

> source "http://rubygems.org"  
> source "http://gems.sentryds.com"  
>   
> gem 'jabber-bot'  
> gem 'dbi', '2.0.1'  
> gem 'nokogiri', '>= 1.4.2'  
> gem 'RedCloth', '>= 4.1.0', '< 4.2.0'  
>   
> gem 'sentryds-utl', :git => 'git://git.sentryds.com/Core/sentryds-util.git'  
>   
> group :development, :test do  
>    gem 'mocha'  
>    gem 'rspec''  
>    gem 'rdoc'  
> end  

!SLIDE bullets incremental transition=fade

# Managing Gems with Bundler #

* bundle install (default system location)
* bundle install --path=vendor
* bundle install --path=vendor --without development test
* bundle update [gem-name]

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

* 
> require 'rubygems'
> require 'bundler/setup'
> &nbsp;
> require 'jabber-bot'
> &nbsp;
> bot = Jabber::Bot.new
> bot.connect

!SLIDE bullets incremental transition=fade

# Testing / Debugging #

* bundle exec 
	* bundle exec script.rb
* bundle console
	* IRB Sesssion with proper environment


!SLIDE bullets incremental transition=fade

# Creating your own Gem with Bundler #

* bundle gem [name]
* Initialized git repository with all necessary files
* 
> jheth$ bundle gem carbon
>       create  carbon/Gemfile
>       create  carbon/Rakefile
>       create  carbon/.gitignore
>       create  carbon/carbon.gemspec
>       create  carbon/lib/carbon.rb
>       create  carbon/lib/carbon/version.rb
> Initializating git repo in /Users/jheth/carbon
> 

!SLIDE bullets incremental transition=fade

# Making it functional #

* Update .gemspec 
* Add/edit lib and/or bin files
* rake -T
	* rake build
	* rake install
	* rake release
* git add remote
* git push

!SLIDE bullets incremental transition=fade

# Add to Gemfile #

* gem 'carbon', :git => 'git://git.sentryds.com/jheth/carbon.git'
* bundle install

!SLIDE bullets incremental transition=fade

# Resolving Common Errors #

"Could not find gem 'rspec (>= 0)' in any of the gem sources listed in your Gemfile"

P: You've update the code but not the bundle.
S: bundle install

P: The specific gem version may no longer be available, so verify the gem version number.
S: svn update / git pull (or fix version yourself)
   bundle install

P: It's prompting me for a root password?
S: By default bundler will install to the system location. Run bundle install with the --path argument.

P: Rake version is conflicting with an already loaded version.
S: bundle exec [command]

