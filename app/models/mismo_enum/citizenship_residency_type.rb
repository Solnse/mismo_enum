# app/models/mismo_enum/citizenship_residency_type.rb
# enum

class MismoEnum::CitizenshipResidencyType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Indicates the U.S. citizenship or alien status of the borrower, as'+
    ' collected on the URLA (Section VIII, lines j. and k.).'
  end

  def self.seed
    [[1, 'NonPermanentResidentAlien', ''],
     [2, 'NonResidentAlien', ''],
     [3, 'PermanentResidentAlien', ''],
     [4, 'USCitizen', ''],
     [5, 'Unknown', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
