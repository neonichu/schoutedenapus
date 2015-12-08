module Pod
  class Command
    class Lib
      class Schoutedenapus < Lib
        self.summary = 'Generate Swift packages from podspecs.'

        self.arguments = [ CLAide::Argument.new('PODSPEC', true) ]

        def initialize(argv)
          @name = argv.shift_argument
          super
        end

        def validate!
          super
          help! 'A Pod name is required.' unless @name
        end

        def run
          UI.puts "Add your implementation for the cocoapods-schoutedenapus plugin in #{__FILE__}"
        end
      end
    end
  end
end
