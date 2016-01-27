module MismoEnum
  RSpec.describe LoanDelinquencyStatusType, type: :model do
    describe "enum table" do
      let(:current) { MismoEnum::LoanDelinquencyStatusType.
        where(:name => 'Current').first }
      let(:all) { MismoEnum::LoanDelinquencyStatusType.all }

      it "contains all 28 LoanDelinquencyStatusTypes" do
        expect(all.count).to eq(28)
      end

      it "includes LoanDelinquencyStatusType names" do
        expect(current.name).to eq('Current')
      end

      it "includes LoanDelinquencyStatusType descriptions" do
        expect(current.description).to eq('The loan has been made current and '+
          'is no longer delinquent.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(current.id).to eq(9)
      end
    end
  end
end
