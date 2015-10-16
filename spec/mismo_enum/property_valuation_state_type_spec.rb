module MismoEnum
  RSpec.describe PropertyValuationStateType, type: :model do
    describe "enum table" do
      let(:original) { MismoEnum::PropertyValuationStateType.
      	where(:name => 'Original').first }
      let(:all) { MismoEnum::PropertyValuationStateType.all }

      it "contains all 2 PropertyValuationStateTypes" do
        expect(all.count).to eq(2)
      end

      it "includes PropertyValuationStateType names" do
        expect(original.name).to eq('Original')
      end

      it "includes PropertyValuationStateType descriptions" do
        expect(original.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(original.id).to eq(1)
      end
    end
  end
end
