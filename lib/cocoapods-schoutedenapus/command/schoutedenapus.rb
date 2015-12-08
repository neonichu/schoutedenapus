require 'cocoapods-schoutedenapus/converter'

module Pod
  class Command
    class Lib
      class Schoutedenapus < Lib
        self.summary = 'Generate Swift packages from podspecs.'

        self.arguments = [ CLAide::Argument.new('PODSPEC', true) ]

        def initialize(argv)
          @spec = spec_with_path(argv.shift_argument)
          super
        end

        def validate!
          super
          help! 'A podspec is required.' unless @spec
        end

        def run
          UI.puts "Add your implementation for the cocoapods-schoutedenapus plugin in #{__FILE__}"
        end

        private

        def spec_with_path(path)
          return if path.nil? || !Pathname.new(path).exist?

          if Pathname.new(path).directory?
            help! path + ': is a directory.'
            return
          end

          unless ['.podspec', '.json'].include? Pathname.new(path).extname
            help! path + ': is not a podspec.'
            return
          end

          Specification.from_file(path)
        end
      end
    end
  end
end
