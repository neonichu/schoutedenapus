module Schoutedenapus
  class Converter
    def initialize(spec)
      @spec = spec
    end

    def to_s
      return <<-EOF
import PackageDescription

let package = Package(
\tname: "#{@spec.name}"#{dependencies}
)
EOF
    end

    private

    def dependency_to_package(dep)
      set = Pod::Config.instance.sources_manager.search(dep)
      Pod::Command::help! "Could not find pod '#{dep.name}'" if set.nil?
      url = set.specification.source[:git]
      # FIXME: Should use the lowest matching version
      major = set.versions.first.major
      minor = set.versions.first.minor
      "\t\t.Package(url: \"#{url}\", majorVersion: #{major}, minor: #{minor}),"
    end

    def dependencies
      return '' if @spec.dependencies.count == 0

      deps = @spec.dependencies.map { |dep| dependency_to_package(dep) }.join("\n")
      dependencies = <<-EOF
,
\tdependencies: [
#{deps}
\t]
EOF
      dependencies.rstrip!
    end
  end
end