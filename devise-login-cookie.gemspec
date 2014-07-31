# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "devise_login_cookie/version"

Gem::Specification.new do |s|
  s.name        = "devise-login-cookie"
  s.version     = DeviseLoginCookie::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Paul Annesley"]
  s.email       = ["paul@annesley.cc"]
  s.homepage    = "http://rubygems.org/gems/devise-login-cookie"
  s.summary     = %q{Devise extension which sets a login cookie, for easier sharing of login between applications}
  s.description = %q{Devise sets a "remember_token" cookie for Remember Me logins, but not for standard logins.  This extension sets a separate cookie on login, which makes sharing login state between same-domain web applications easier.}

  s.rubyforge_project = "devise-login-cookie"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("signed_json", ["~> 0.0.3"])
  s.add_dependency("devise", [">= 2"])

  s.add_development_dependency("rspec", ["~> 2.2"])
  s.add_development_dependency("rails", [">= 3"]) # devise requires this
  s.add_development_dependency("rake")

end
