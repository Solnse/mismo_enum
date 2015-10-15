module MismoEnum
  RSpec.describe RateLockType, type: :model do
    describe "enum table" do
      let(:best_efforts) { MismoEnum::RateLockType.
      	where(:name => 'BestEfforts').first }
      let(:all) { MismoEnum::RateLockType.all }

      it "contains all 2 RateLockTypes" do
        expect(all.count).to eq(2)
      end

      it "includes RateLockType names" do
        expect(best_efforts.name).to eq('BestEfforts')
      end

      it "includes RateLockType descriptions" do
        expect(best_efforts.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(best_efforts.id).to eq(1)
      end
    end
  end
end
