require File.expand_path(File.join(File.dirname(__FILE__), 'lib', 'simply_configurable', 'version'))

Gem::Specification.new do |s|

  # definition
  s.name = %q{simply_configurable}
  s.version = SimplyConfigurable::VERSION

  # details
  s.date = %q{2012-04-12}
  s.summary = %q{Makes it simple to set arbitrary config key/value pairs on a class.}
  s.description = %q{Makes it simple to set arbitrary config key/value pairs on a class.}
  s.authors = [ 'David Dawson' ]
  s.email = %q{daws23@gmail.com}
  s.homepage = %q{https://github.com/daws/simply_configurable}
  s.require_paths = [ 'lib' ]
  
  # documentation
  s.has_rdoc = true
  s.extra_rdoc_files = %w( README.rdoc CHANGELOG.rdoc LICENSE.txt )
  s.rdoc_options = %w( --main README.rdoc )

  # files to include
  s.files = Dir[ 'lib/**/*.rb', 'README.rdoc', 'CHANGELOG.rdoc', 'LICENSE.txt' ]

  # dependencies
  s.add_dependency 'activesupport', '>= 3.0'

  # if binaries
  # s.bindir = 'bin'
  # s.executables = [ 'executable' ]

end
