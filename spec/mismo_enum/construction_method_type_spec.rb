module MismoEnum
  RSpec.describe ConstructionMethodType, type: :model do
    describe "enum table" do
      let(:modular) { MismoEnum::ConstructionMethodType.
      	where(:name => 'Modular').first }
      let(:all) { MismoEnum::ConstructionMethodType.all }

      it "contains all 6 ConstructionMethodTypes" do
        expect(all.count).to eq(6)
      end

      it "includes ConstructionMethodType names" do
        expect(modular.name).to eq('Modular')
      end

      it "includes ConstructionMethodType descriptions" do
        expect(modular.description).to eq('A factory built dwelling not on a '+
                                          'permanent chassis.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(modular.id).to eq(3)
      end
    end
  end
end
