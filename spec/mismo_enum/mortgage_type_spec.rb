module MismoEnum
  RSpec.describe MortgageType, type: :model do
    describe "enum table" do
      let(:local_agency) { MismoEnum::MortgageType.
      	where(:name => 'LocalAgency').first }
      let(:all) { MismoEnum::MortgageType.all }

      it "contains all 8 MortgageTypes" do
        expect(all.count).to eq(8)
      end

      it "includes MortgageType names" do
        expect(local_agency.name).to eq('LocalAgency')
      end

      it "includes MortgageType descriptions" do
        expect(local_agency.description).to eq('A loan originated in accordance '+
          'with the guidelines of an agency governed by a municipal '+
          'jurisdiction.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(local_agency.id).to eq(3)
      end
    end
  end
end
