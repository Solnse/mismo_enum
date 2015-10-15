module MismoEnum
  RSpec.describe TaxpayerIdentifierType, type: :model do
    describe "enum table" do
      let(:social_security_number) { MismoEnum::TaxpayerIdentifierType.
      	where(:name => 'SocialSecurityNumber').first }
      let(:all) { MismoEnum::TaxpayerIdentifierType.all }

      it "contains all 4 TaxpayerIdentifierTypes" do
        expect(all.count).to eq(3)
      end

      it "includes TaxpayerIdentifierType names" do
        expect(social_security_number.name).to eq('SocialSecurityNumber')
      end

      it "includes TaxpayerIdentifierType descriptions" do
        expect(social_security_number.description).to eq('')
      end

      it "allows id to be assigned during creation by seed" do
        # seed is already run before(:suite)
        expect(social_security_number.id).to eq(3)
      end
    end
  end
end
