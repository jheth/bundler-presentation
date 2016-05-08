##  Shelling Out

Any Ruby code that opens a subshell (ex. system) will automatically use the current Bundler environment.

```ruby
Bundler.with_clean_env do
  `brew install wget`
end
```

Also necessary if shelling out to a different bundle.

```ruby
Bundler.with_clean_env do
  Dir.chdir "/other/bundler/project" do
    `bundle exec ./script`
  end
end
```

Bundler provided convenience helpers:

```ruby
Bundler.clean_system('brew install wget')
Bundler.clean_exec('brew install wget')
```

note:
 If you need to shell out to a Ruby command that is not part of your current bundle, use the with_clean_env method with a block. Any subshells created inside the block will be given the environment present before Bundler was activated. For example, Homebrew commands run Ruby, but don't work inside a bundle:

 Any Bundler commands run in a subshell will inherit the current Gemfile, so commands that need to run in the context of a different bundle also need to use with_clean_env.
