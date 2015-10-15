module MismoEnum
  RSpec.describe PropertyUsageType, type: :model do
    describe "enum table" do
      let(:second_home) { MismoEnum::PropertyUsageType.
      	where(:name => 'SecondHome').first }
      let(:all) { MismoEnum::PropertyUsageType.all }

      it "contains all 4 PropertyUsageTypes" do
        expect(all.count).to eq(4)
      end

      it "includes PropertyUsageType names" do
        expect(second_home.name).to eq('SecondHome')
      end

      it "includes PropertyUsageType descriptions" do
        expect(second_home.description).to eq('A property occupied by the '+
          'owner for a portion of the year and is not the primary residence.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(second_home.id).to eq(3)
      end
    end
  end
end
