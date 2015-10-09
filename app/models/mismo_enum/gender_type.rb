# app/models/mismo/gender_type.rb
# enum

class MismoEnum::GenderType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.seed
    [[1, 'Female', ''],
     [2, 'InformationNotProvidedUnknown', ''],
     [3, 'Male', ''],
     [4, 'NotApplicable', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
