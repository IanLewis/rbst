# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{RbST}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["William Melody"]
  s.date = %q{2009-11-02}
  s.description = %q{A simple Ruby wrapper for processing reStructuredText via Python's Docutils}
  s.email = %q{wmelody@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "RbST.gemspec",
     "VERSION",
     "lib/rbst.rb",
     "lib/rst2parts/__init__.py",
     "lib/rst2parts/rst2html.py",
     "lib/rst2parts/rst2latex.py",
     "lib/rst2parts/transform.py",
     "test/files/test.html",
     "test/files/test.latex",
     "test/files/test.rst",
     "test/test_helper.rb",
     "test/test_rbst.rb"
  ]
  s.homepage = %q{http://rdoc.info/projects/autodata/rbst}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A simple Ruby wrapper for processing reStructuredText via Python's Docutils}
  s.test_files = [
    "test/test_helper.rb",
     "test/test_rbst.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<open4>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<open4>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<open4>, [">= 0"])
  end
end

