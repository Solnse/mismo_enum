module MismoEnum
  RSpec.describe BorrowerClassificationType, type: :model do
    describe "enum table" do
      let(:secondary) { MismoEnum::BorrowerClassificationType.
      	where(:name => 'Secondary').first }
      let(:all) { MismoEnum::BorrowerClassificationType.all }

      it "contains all 2 BorrowerClassificationTypes" do
        expect(all.count).to eq(2)
      end

      it "includes BorrowerClassificationType names" do
        expect(secondary.name).to eq('Secondary')
      end

      it "includes BorrowerClassificationType descriptions" do
        expect(secondary.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(secondary.id).to eq(2)
      end
    end
  end
end
