module MismoEnum
  RSpec.describe PaymentDelinquencyStatusType, type: :model do
    describe "enum table" do
      let(:sixty_days) { MismoEnum::PaymentDelinquencyStatusType.
        where(:name => 'MoreThan60Days').first }
      let(:all) { MismoEnum::PaymentDelinquencyStatusType.all }

      it "contains all 5 PaymentDelinquencyStatusTypes" do
        expect(all.count).to eq(5)
      end

      it "includes PaymentDelinquencyStatusType names" do
        expect(sixty_days.name).to eq('MoreThan60Days')
      end

      it "includes PaymentDelinquencyStatusType descriptions" do
        expect(sixty_days.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(sixty_days.id).to eq(3)
      end
    end
  end
end
