module MismoEnum
  RSpec.describe BankruptcyDispositionType, type: :model do
    describe "enum table" do
      let(:discharged) { MismoEnum::BankruptcyDispositionType.
        where(:name => 'Discharged').first }
      let(:all) { MismoEnum::BankruptcyDispositionType.all }

      it "contains all 5 BankruptcyDispositionType" do
        expect(all.count).to eq(5)
      end

      it "includes BankruptcyDispositionType names" do
        expect(discharged.name).to eq('Discharged')
      end

      it "includes BankruptcyDispositionType descriptions" do
        expect(discharged.description).to eq('The unsecured debt is no longer '+
          'pursuable')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(discharged.id).to eq(2)
      end
    end
  end
end
