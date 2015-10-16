module MismoEnum
  RSpec.describe DefinitionOfValueType, type: :model do
    describe "enum table" do
      let(:forecast_value) { MismoEnum::DefinitionOfValueType.
      	where(:name => 'ForecastValue').first }
      let(:all) { MismoEnum::DefinitionOfValueType.all }

      it "contains all 7 DefinitionOfValueTypes" do
        expect(all.count).to eq(7)
      end

      it "includes DefinitionOfValueType names" do
        expect(forecast_value.name).to eq('ForecastValue')
      end

      it "includes DefinitionOfValueType descriptions" do
        expect(forecast_value.description).to eq('The anticipated selling price of'+
          ' a property as of a defined time-period or date.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(forecast_value.id).to eq(3)
      end
    end
  end
end
