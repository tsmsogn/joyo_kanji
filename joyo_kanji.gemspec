
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "joyo_kanji/version"

Gem::Specification.new do |spec|
  spec.name          = "joyo_kanji"
  spec.version       = JoyoKanji::VERSION
  spec.authors       = ["tsmsogn"]
  spec.email         = ["tsmsogn@gmail.com"]
  spec.licenses      = ["MIT"]
  spec.summary       = %q{JoyoKanji is utils for Japanese joyo kanji.}
  spec.description   = %q{JoyoKanji is utils for Japanese joyo kanji.}
  spec.homepage      = "https://github.com/tsmsogn/joyo_kanji"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
