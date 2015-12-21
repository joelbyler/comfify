# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','comfify','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'comfify'
  s.version = Comfify::VERSION
  s.author = 'Joel Byler'
  s.email = 'joelbyler@gmail.com'
  s.homepage = 'https://github.com/joelbyler/comfify'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Command Line Utility to assist in setting up dotfiles'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','comfify.rdoc']
  s.rdoc_options << '--title' << 'comfify' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'comfify'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('rspec')
  s.add_development_dependency('aruba')
  s.add_development_dependency('fakefs')
  s.add_development_dependency('pry')
  s.add_runtime_dependency('gli','2.13.4')
end
