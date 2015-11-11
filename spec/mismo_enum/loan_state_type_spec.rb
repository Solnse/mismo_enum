module MismoEnum
  RSpec.describe LoanStateType, type: :model do
    describe "enum table" do
      let(:current) { MismoEnum::LoanStateType.
        where(:name => 'Current').first }
      let(:all) { MismoEnum::LoanStateType.all }

      it "contains all 11 LoanStateTypes" do
        expect(all.count).to eq(11)
      end

      it "includes LoanStateType names" do
        expect(current.name).to eq('Current')
      end

      it "includes LoanStateType descriptions" do
        expect(current.description).to eq('A snapshot of the loan data as of '+
                                          'the "Loan State Date".')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(current.id).to eq(11)
      end
    end
  end
end
