module MismoEnum
  RSpec.describe AutomatedUnderwritingSystemType, type: :model do
    describe "enum table" do
      let(:lp) { MismoEnum::AutomatedUnderwritingSystemType.
      	where(:name => 'LoanProspector').first }
      let(:all) { MismoEnum::AutomatedUnderwritingSystemType.all }

      it "contains all 11 AutomatedUnderwritingSystemTypes" do
        expect(all.count).to eq(11)
      end

      it "includes AutomatedUnderwritingSystemType names" do
        expect(lp.name).to eq('LoanProspector')
      end

      it "includes AutomatedUnderwritingSystemType descriptions" do
        expect(lp.description).to eq('Freddie Mac')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(lp.id).to eq(4)
      end
    end
  end
end
