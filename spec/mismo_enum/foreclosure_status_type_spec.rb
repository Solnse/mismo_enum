module MismoEnum
  RSpec.describe ForeclosureStatusType, type: :model do
    describe "enum table" do
      let(:scheduled) { MismoEnum::ForeclosureStatusType.
        where(:name => 'ForeclosureSaleScheduled').first }
      let(:all) { MismoEnum::ForeclosureStatusType.all }

      it "contains all 14 ForeclosureStatusType" do
        expect(all.count).to eq(14)
      end

      it "includes ForeclosureStatusType names" do
        expect(scheduled.name).to eq('ForeclosureSaleScheduled')
      end

      it "includes ForeclosureStatusType descriptions" do
        expect(scheduled.description).to eq('Foreclosure sale has been '+
                                              'scheduled')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(scheduled.id).to eq(12)
      end
    end
  end
end
