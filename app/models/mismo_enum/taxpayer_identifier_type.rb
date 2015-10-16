# app/models/mismo_enum/taxpayer_identifier_type.rb
# enum

class MismoEnum::TaxpayerIdentifierType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Specifies the type of identification number used by the Internal Revenue'+
    ' Service (IRS) in the administration of tax laws. It is issued either by'+
    ' the Social Security Administration (SSA) or the IRS. A Social Security'+
    ' number (SSN) is issued by the SSA; all other taxpayer identification'+
    ' numbers are issued by the IRS.'
  end

  def self.seed
    [[1, 'EmployerIdentificationNumber', ''],
     [2, 'IndividualTaxpayerIdentificationNumber', ''],
     [3, 'SocialSecurityNumber', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
