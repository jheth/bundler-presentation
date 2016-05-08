## Command Executation

```ruby
# my-script.rb
require 'rubygems'
require 'bundler/setup'

puts 'Hello World'
puts ENV['BUNDLER_GEMFILE']
```

```ruby
$ ruby my-script.rb
```

With Binaries

```bash
bundle exec rspec spec/lib/my_spec.rb

# Install executables
bundle install --binstubs

# scoped to the bundle
bin/rspec spec/lib/my_spec.rb
```
