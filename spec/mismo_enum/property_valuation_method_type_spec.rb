module MismoEnum
  RSpec.describe PropertyValuationMethodType, type: :model do
    describe "enum table" do
      let(:prior_appraisal_used) { MismoEnum::PropertyValuationMethodType.
      	where(:name => 'PriorAppraisalUsed').first }
      let(:all) { MismoEnum::PropertyValuationMethodType.all }

      it "contains all 9 PropertyValuationMethodTypes" do
        expect(all.count).to eq(9)
      end

      it "includes PropertyValuationMethodType names" do
        expect(prior_appraisal_used.name).to eq('PriorAppraisalUsed')
      end

      it "includes PropertyValuationMethodType descriptions" do
        expect(prior_appraisal_used.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(prior_appraisal_used.id).to eq(7)
      end
    end
  end
end
