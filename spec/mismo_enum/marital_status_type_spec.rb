module MismoEnum
  RSpec.describe MaritalStatusType, type: :model do
    describe "enum table" do
      let(:separated) { MismoEnum::MaritalStatusType.
      	where(:name => 'Separated').first }
      let(:all) { MismoEnum::MaritalStatusType.all }

      it "contains all 5 MaritalStatusTypes" do
        expect(all.count).to eq(5)
      end

      it "includes MaritalStatusType names" do
        expect(separated.name).to eq('Separated')
      end

      it "includes MaritalStatusType descriptions" do
        expect(separated.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(separated.id).to eq(3)
      end
    end
  end
end
