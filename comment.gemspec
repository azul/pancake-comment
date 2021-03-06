# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{comment}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["azul@riseup.net, Jack Dempsey"]
  s.date = %q{2009-11-15}
  s.email = %q{azul@riseup.net}
  s.extra_rdoc_files = [
    "LICENSE",
     "README"
  ]
  s.files = [
    "LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "lib/comment.rb",
     "lib/comment/comment.rb",
     "lib/comment/config.ru",
     "lib/comment/config/config.rb",
     "lib/comment/config/database.yml",
     "lib/comment/config/environments/development.rb",
     "lib/comment/config/environments/production.rb",
     "lib/comment/config/environments/staging.rb",
     "lib/comment/master/config/config.rb",
     "lib/comment/master/config/database.yml",
     "lib/comment/models/comment_post.rb",
     "lib/comment/script/console",
     "lib/comment/tasks/comment.rake",
     "lib/comment/views/_summary.html.haml",
     "lib/comment/views/_form.html.haml",
     "lib/comment/views/_new.html.haml",
     "lib/comment/views/base.html.haml",
     "lib/comment/views/root.html.haml",
     "spec/comment_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/jackdempsey/pancake-comment}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Simple comment engine on pancake to go with the pancake comment}
  s.test_files = [
    "spec/comment_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pancake>, [">= 0.1.9"])
    else
      s.add_dependency(%q<pancake>, [">= 0.1.9"])
    end
  else
    s.add_dependency(%q<pancake>, [">= 0.1.9"])
  end
end
