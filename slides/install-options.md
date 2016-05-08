##  Install Options

`bundle install, bundle i, bundle`

```ruby
$ bundle --gemfile=Gemfile.dev
$ bundle --binstubs=bin  # Directory for executables
$ bundle --jobs=3        # parallel download/install jobs
$ bundle --local         # Use local cache
$ bundle --deployment    # without development, test groups
$ bundle --force         # Force download
$ bundle --system        # Install to system's Rubygems location (ignore path)
$ bundle --no-cache      # Do not update the cache with new gems
$ bundle --no-prune      # Don't remove stale gems from the cache
$ bundle --path=mygems   # install location, default is Ruby Gems
$ bundle --clean         # clean unused gems after install
$ bundle --quiet         # No stdout
$ bundle --shebang=jruby # change bin stub: #!/usr/bin/env jruby
$ bundle --standalone=<list> # Does not depend on rubygems or bundler
$ bundle --with test     # Install group
$ bundle --without test  # Without group

```
