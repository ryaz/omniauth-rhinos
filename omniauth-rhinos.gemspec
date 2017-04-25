# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "omniauth-rhinos"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["ryaz"]
  s.date = "2017-04-24"
  s.description = "OmniAuth strategy for Rhinos"
  s.email = ["dmytro@vloop.io"]
  s.files = [".gitignore", "Gemfile", "Rakefile", "lib/omniauth-rhinos.rb", "omniauth-rhinos.gemspec"]
  s.homepage = "https://github.com/ryaz/omniauth-rhinos.git"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "OmniAuth strategy for Rhinos"
  s.test_files = ["test/helper.rb", "test/support/shared_examples.rb", "test/test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth-oauth2>, ["~> 1.4"])
      s.add_development_dependency(%q<bundler>, ["~> 1.11.2"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<omniauth-oauth2>, ["~> 1.4"])
      s.add_dependency(%q<bundler>, ["~> 1.11.2"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<omniauth-oauth2>, ["~> 1.4"])
    s.add_dependency(%q<bundler>, ["~> 1.11.2"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
