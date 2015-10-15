module MismoEnum
  RSpec.describe AmortizationType, type: :model do
    describe "enum table" do
      let(:adjustable) { MismoEnum::AmortizationType.
      	where(:name => 'AdjustableRate').first }
      let(:all) { MismoEnum::AmortizationType.all }

      it "contains all 8 AmortizationTypes" do
        expect(all.count).to eq(8)
      end

      it "includes AmortizationType names" do
        expect(adjustable.name).to eq('AdjustableRate')
      end

      it "includes AmortizationType descriptions" do
        expect(adjustable.description).to eq('A mortgage that allows the '+
          'lender to adjust the interest rate in accordance with a specified '+
          'index periodically.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(adjustable.id).to eq(2)
      end
    end
  end
end
