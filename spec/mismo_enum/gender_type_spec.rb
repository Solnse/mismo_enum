module MismoEnum
  RSpec.describe GenderType, type: :model do
    describe "enum table" do
      let(:male) { MismoEnum::GenderType.
      	where(:name => 'Male').first }
      let(:all) { MismoEnum::GenderType.all }

      it "contains all 4 GenderTypes" do
        expect(all.count).to eq(4)
      end

      it "includes GenderType names" do
        expect(male.name).to eq('Male')
      end

      it "includes GenderType descriptions" do
        expect(male.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(male.id).to eq(3)
      end
    end
  end
end
