# -*- encoding: utf-8 -*-
# stub: kami 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "kami"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "TODO: Set to 'http://mygemserver.com'" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Joe Heth"]
  s.bindir = "exe"
  s.date = "2016-05-11"
  s.description = "TODO: Write a longer description or delete this line."
  s.email = ["joeheth@gmail.com"]
  s.files = [".gitignore", ".rspec", ".travis.yml", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "bin/console", "bin/setup", "kami.gemspec", "lib/kami.rb", "lib/kami/client.rb", "lib/kami/document.rb", "lib/kami/version.rb"]
  s.homepage = "TODO: Put your gem's website or public repo URL here."
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "TODO: Write a short summary, because Rubygems requires one."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.8.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.11"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.11.2"])
      s.add_development_dependency(%q<webmock>, ["~> 2.0.0"])
      s.add_development_dependency(%q<vcr>, ["~> 2.9.3"])
      s.add_development_dependency(%q<pry-byebug>, ["~> 3.3.0"])
      s.add_development_dependency(%q<awesome_print>, ["~> 1.6.1"])
    else
      s.add_dependency(%q<rest-client>, ["~> 1.8.0"])
      s.add_dependency(%q<bundler>, ["~> 1.11"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<simplecov>, ["~> 0.11.2"])
      s.add_dependency(%q<webmock>, ["~> 2.0.0"])
      s.add_dependency(%q<vcr>, ["~> 2.9.3"])
      s.add_dependency(%q<pry-byebug>, ["~> 3.3.0"])
      s.add_dependency(%q<awesome_print>, ["~> 1.6.1"])
    end
  else
    s.add_dependency(%q<rest-client>, ["~> 1.8.0"])
    s.add_dependency(%q<bundler>, ["~> 1.11"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<simplecov>, ["~> 0.11.2"])
    s.add_dependency(%q<webmock>, ["~> 2.0.0"])
    s.add_dependency(%q<vcr>, ["~> 2.9.3"])
    s.add_dependency(%q<pry-byebug>, ["~> 3.3.0"])
    s.add_dependency(%q<awesome_print>, ["~> 1.6.1"])
  end
end
