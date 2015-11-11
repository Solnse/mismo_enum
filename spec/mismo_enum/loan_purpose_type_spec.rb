module MismoEnum
  RSpec.describe LoanPurposeType, type: :model do
    describe "enum table" do
      let(:unknown) { MismoEnum::LoanPurposeType.
      	where(:name => 'Unknown').first }
      let(:all) { MismoEnum::LoanPurposeType.all }

      it "contains all 5 LoanPurposeTypes" do
        expect(all.count).to eq(5)
      end

      it "includes LoanPurposeType names" do
        expect(unknown.name).to eq('Unknown')
      end

      it "includes LoanPurposeType descriptions" do
        expect(unknown.description).to eq('Loan Purpose has not been reported '+
                                          'or is not known.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(unknown.id).to eq(5)
      end
    end
  end
end
