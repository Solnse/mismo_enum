module MismoEnum
  RSpec.describe IndexType, type: :model do
    describe "enum table" do
      let(:treasury_bill) { MismoEnum::IndexType.
      	where(:name => 'TreasuryBill').first }
      let(:all) { MismoEnum::IndexType.all }

      it "contains all 9 IndexTypes" do
        expect(all.count).to eq(9)
      end

      it "includes IndexType names" do
        expect(treasury_bill.name).to eq('TreasuryBill')
      end

      it "includes IndexType descriptions" do
        expect(treasury_bill.description).to eq('Often referred to as T-Bill')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(treasury_bill.id).to eq(8)
      end
    end
  end
end
