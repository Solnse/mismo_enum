# app/models/mismo/taxpayer_identifier_type.rb
# enum

class MismoEnum::TaxpayerIdentifierType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.seed
    [[1, 'EmployerIdentificationNumber', ''],
     [2, 'IndividualTaxpayerIdentificationNumber', ''],
     [3, 'SocialSecurityNumber', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
