require 'spec_helper'

module MismoEnum
  RSpec.describe "MismoEnum::PostalState", type: :model do
    describe "enum table" do
      let(:calif) { FactoryGirl.build(:postal_state,
                                      id:           5,
                                      name:        'CA',
                                      description: 'California') }
      let(:all) { MismoEnum::PostalState.all }

      it "contains all 65 states and territories" do
        expect(all.count).to eq(65)
      end

      it "includes state abbreviations" do
        expect(calif.name).to eq('CA')
      end

      it "includes state description as full names" do
        expect(calif.description).to eq('California')
      end

      it "allows id to be assigned during creation" do
        expect(calif.id).to eq(5)
      end
    end
  end
end
