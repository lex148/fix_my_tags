# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fix_my_tags/version"

Gem::Specification.new do |s|
  s.name        = "fix_my_tags"
  s.version     = FixMyTags::VERSION
  s.authors     = ["Lex Childs"]
  s.email       = ["lexchilds@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Fix music tags}
  s.description = %q{finds missing audio tags and fills them in}

  s.rubyforge_project = "fix_my_tags"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "minitest"
  s.add_development_dependency "turn"
  s.add_development_dependency "rake"

end
