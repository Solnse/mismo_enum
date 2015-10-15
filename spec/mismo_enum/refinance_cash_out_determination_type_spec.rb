module MismoEnum
  RSpec.describe RefinanceCashOutDeterminationType, type: :model do
    describe "enum table" do
      let(:no_cash_out) { MismoEnum::RefinanceCashOutDeterminationType.
      	where(:name => 'NoCashOut').first }
      let(:all) { MismoEnum::RefinanceCashOutDeterminationType.all }

      it "contains all 4 RefinanceCashOutDeterminationTypes" do
        expect(all.count).to eq(4)
      end

      it "includes RefinanceCashOutDeterminationType names" do
        expect(no_cash_out.name).to eq('NoCashOut')
      end

      it "includes RefinanceCashOutDeterminationType descriptions" do
        expect(no_cash_out.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(no_cash_out.id).to eq(3)
      end
    end
  end
end
