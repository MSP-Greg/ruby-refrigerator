spec = Gem::Specification.new do |s|
  s.name = 'refrigerator'
  s.version = '1.1.0'
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc", "CHANGELOG", "MIT-LICENSE"]
  s.rdoc_options += ["--quiet", "--line-numbers", "--inline-source", '--title', 'Refrigerator: Freeze all core ruby classes', '--main', 'README.rdoc']
  s.license = "MIT"
  s.summary = "Freeze all core ruby classes"
  s.author = "Jeremy Evans"
  s.email = "code@jeremyevans.net"
  s.homepage = "http://github.com/jeremyevans/ruby-refrigerator"
  s.files = %w(MIT-LICENSE CHANGELOG README.rdoc Rakefile bin/check_require) + Dir["{spec,lib}/**/*.rb"] + Dir['module_names/*.txt']
  s.required_ruby_version = ">= 1.8.7"
  s.bindir = 'bin'
  s.executables << 'check_require'
  s.description = <<END
Refrigerator freezes all core classes.  It is designed to be used
in production, to make sure that none of the core classes are
modified at runtime.  It can also be used to check libraries to
make sure that don't make unexpected modifications/monkey patches
to core classes.
END
  s.add_development_dependency('minitest')
end
