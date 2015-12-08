require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Lib::Schoutedenapus do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w( lib schoutedenapus )).should.be.instance_of Command::Lib::Schoutedenapus
      end

      it 'parses a given spec' do
        cmd = Command.parse(%w( lib schoutedenapus spec/fixtures/Stencil.podspec.json ))
        cmd.validate!

        cmd.instance_variable_get('@spec').name.should == 'Stencil'
      end

      it 'generates a Package.swift file' do
        cmd = Command.parse(%w( lib schoutedenapus spec/fixtures/Stencil.podspec.json ))
        cmd.run

        FileUtils.compare_file('spec/fixtures/Package.swift', 'Package.swift').should == true
        FileUtils.rm_f('Package.swift')
      end
    end
  end
end
