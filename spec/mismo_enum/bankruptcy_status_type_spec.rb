module MismoEnum
  RSpec.describe BankruptcyStatusType, type: :model do
    describe "enum table" do
      let(:closed) { MismoEnum::BankruptcyStatusType.
        where(:name => 'Closed').first }
      let(:all) { MismoEnum::BankruptcyStatusType.all }

      it "contains all 3 BankruptcyStatusType" do
        expect(all.count).to eq(3)
      end

      it "includes BankruptcyStatusType names" do
        expect(closed.name).to eq('Closed')
      end

      it "includes BankruptcyStatusType descriptions" do
        expect(closed.description).to eq('The case has been closed by the '+
          'bankruptcy court.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(closed.id).to eq(2)
      end
    end
  end
end
