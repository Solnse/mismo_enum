module MismoEnum
  RSpec.describe ProjectLegalStructureType, type: :model do
    describe "enum table" do
      let(:midrise_project) { MismoEnum::ProjectLegalStructureType.
      	where(:name => 'Condominium').first }
      let(:all) { MismoEnum::ProjectLegalStructureType.all }

      it "contains all 4 ProjectLegalStructureTypes" do
        expect(all.count).to eq(4)
      end

      it "includes ProjectLegalStructureType names" do
        expect(midrise_project.name).to eq('Condominium')
      end

      it "includes ProjectLegalStructureType descriptions" do
        expect(midrise_project.description).to eq('A project that is legally '+
          'formed as a condominium under the Condominium-Enabling Legislation '+
          'of the state in which the project is located.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(midrise_project.id).to eq(1)
      end
    end
  end
end
