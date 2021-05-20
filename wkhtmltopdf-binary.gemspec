# coding: utf-8

Gem::Specification.new do |s|
  s.name = "parallel588-wkhtmltopdf-binary"
  s.version = "0.12.6.5"
  s.license = "Apache-2.0"
  s.author = "Maksim Pechnikov"
  s.email = "parallel588@gmail.com"
  s.platform = Gem::Platform::RUBY
  s.summary = "Provides binaries for WKHTMLTOPDF project in an easily accessible package."
  s.files = Dir['bin/*']
  s.executables << "wkhtmltopdf"
  s.require_path = '.'

  s.add_development_dependency "minitest"
end
