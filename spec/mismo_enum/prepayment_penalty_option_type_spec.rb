module MismoEnum
  RSpec.describe PrepaymentPenaltyOptionType, type: :model do
    describe "enum table" do
      let(:hard) { MismoEnum::PrepaymentPenaltyOptionType.
      	where(:name => 'Hard').first }
      let(:all) { MismoEnum::PrepaymentPenaltyOptionType.all }

      it "contains all 2 PrepaymentPenaltyOptionTypes" do
        expect(all.count).to eq(2)
      end

      it "includes PrepaymentPenaltyOptionType names" do
        expect(hard.name).to eq('Hard')
      end

      it "includes PrepaymentPenaltyOptionType descriptions" do
        expect(hard.description).to eq('Standard prepay penalty applies in all'+
          ' situations.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(hard.id).to eq(1)
      end
    end
  end
end
