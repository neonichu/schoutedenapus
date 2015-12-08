module Schoutedenapus
  class Converter
  	def initialize(spec)
  	  @spec = spec
  	end

  	def to_s
  	  return <<-EOF
import PackageDescription

let package = Package(
	name: "#{@spec.name}"
)
EOF
  	end
  end
end