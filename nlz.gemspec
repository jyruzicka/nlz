# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "nlz"
  s.version = File.read('version.txt')
  
  s.summary = "A gem for statistical analysis."
  s.description = "NLZ adds several handy methods to the Hash class. See the readme for usage instructions"
  
  s.author = 'Jan-Yves Ruzicka'
  s.email = 'jan@1klb.com'
  s.homepage = 'https://www.1klb.com'
  
  s.files = File.read('Manifest').split("\n").select{ |l| !l.start_with?('#') && l != ''}
  s.require_paths << 'lib'
  s.bindir = 'bin'
  s.executables << 'nlz'
  s.extra_rdoc_files = ['README.md']

  # Add runtime dependencies here
  #s.add_runtime_dependency 'commander', '~> 4.1.2'
end
