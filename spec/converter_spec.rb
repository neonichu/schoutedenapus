require File.expand_path('../spec_helper', __FILE__)

module Schoutedenapus
  describe Converter do
    describe 'Conversion' do
      it 'can convert a podspec' do
        fixture = File.new('spec/fixtures/Package.swift').read()
        spec = Pod::Specification.from_file('spec/fixtures/Stencil.podspec.json')

        actual = Converter.new(spec).to_s

        actual.should == fixture
      end
    end
  end
end
