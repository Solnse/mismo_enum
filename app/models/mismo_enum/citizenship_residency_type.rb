# app/models/mismo/citizenship_residency_type.rb
# enum

class MismoEnum::CitizenshipResidencyType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

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
