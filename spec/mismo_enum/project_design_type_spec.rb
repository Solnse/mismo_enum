module MismoEnum
  RSpec.describe ProjectDesignType, type: :model do
    describe "enum table" do
      let(:midrise_project) { MismoEnum::ProjectDesignType.
      	where(:name => 'MidriseProject').first }
      let(:all) { MismoEnum::ProjectDesignType.all }

      it "contains all 4 ProjectDesignTypes" do
        expect(all.count).to eq(4)
      end

      it "includes ProjectDesignType names" do
        expect(midrise_project.name).to eq('MidriseProject')
      end

      it "includes ProjectDesignType descriptions" do
        expect(midrise_project.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(midrise_project.id).to eq(3)
      end
    end
  end
end
