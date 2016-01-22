module MismoEnum
  RSpec.describe IndexSourceType, type: :model do
    describe "enum table" do
      let(:prime_rate_wsj_effective_date) { MismoEnum::IndexSourceType.
        where(:name => 'PrimeRateWSJEffectiveDate').first }
      let(:all) { MismoEnum::IndexSourceType.all }

      it "contains all 30 IndexSourceTypes" do
        expect(all.count).to eq(30)
      end

      it "includes IndexSourceType names" do
        expect(prime_rate_wsj_effective_date.name).
        to eq('PrimeRateWSJEffectiveDate')
      end

      it "includes IndexSourceType descriptions" do
        expect(prime_rate_wsj_effective_date.description).
        to eq('The Prime Rate (effective as of the published Effective Date) '+
                'as published in the Money Rates section of the Wall Street '+
                'Journal.')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(prime_rate_wsj_effective_date.id).to eq(18)
      end
    end
  end
end
