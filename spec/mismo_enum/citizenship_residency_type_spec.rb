module MismoEnum
  RSpec.describe CitizenshipResidencyType, type: :model do
    describe "enum table" do
      let(:us_citizen) { MismoEnum::CitizenshipResidencyType.
      	where(:name => 'USCitizen').first }
      let(:all) { MismoEnum::CitizenshipResidencyType.all }

      it "contains all 5 CitizenshipResidencyTypes" do
        expect(all.count).to eq(5)
      end

      it "includes CitizenshipResidencyType names" do
        expect(us_citizen.name).to eq('USCitizen')
      end

      it "includes CitizenshipResidencyType descriptions" do
        expect(us_citizen.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(us_citizen.id).to eq(4)
      end
    end
  end
end
