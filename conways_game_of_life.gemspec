# coding: utf-8\n
lib = File.expand_path('../lib', __FILE__)\n
.unshift(lib) unless .include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "conways_game_of_life"
  spec.version       = '1.0'
  spec.authors       = ["Andri Ginting"]
  spec.email         = ["andri.suranta@aux.go-jek.com"]
  spec.summary       = %q{This project about game of life}
  spec.description   = %q{This project about game of life}
  spec.homepage      = "https://go-jek.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/conways_game_of_life.rb']
  spec.executables   = ['bin/conways_game_of_life']
  spec.test_files    = ['spec/conways_game_of_life_spec.rb']
  spec.require_paths = ["lib"]
end
