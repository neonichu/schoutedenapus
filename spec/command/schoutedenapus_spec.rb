require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Lib::Schoutedenapus do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w( lib schoutedenapus )).should.be.instance_of Command::Lib::Schoutedenapus
      end
    end
  end
end
