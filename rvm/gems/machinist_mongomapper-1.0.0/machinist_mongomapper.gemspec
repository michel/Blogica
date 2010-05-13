# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{machinist_mongomapper}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nicolas M\303\251rouze", "Cyril Mougel"]
  s.date = %q{2010-01-11}
  s.email = %q{nicolas.merouze@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.textile"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "init.rb",
     "lib/machinist/mongomapper.rb",
     "machinist_mongomapper.gemspec",
     "spec/mongomapper_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/yeastymobs/machinist_mongomapper}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Machinist adapter for MongoMapper}
  s.test_files = [
    "spec/mongomapper_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<machinist>, ["~> 1.0.4"])
      s.add_runtime_dependency(%q<mongo_mapper>, ["~> 0.6.1"])
    else
      s.add_dependency(%q<machinist>, ["~> 1.0.4"])
      s.add_dependency(%q<mongo_mapper>, ["~> 0.6.1"])
    end
  else
    s.add_dependency(%q<machinist>, ["~> 1.0.4"])
    s.add_dependency(%q<mongo_mapper>, ["~> 0.6.1"])
  end
end

