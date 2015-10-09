# app/models/mismo/marital_status_type.rb
# enum

class MismoEnum::MaritalStatusType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.seed
    [[1, 'Married', ''],
     [2, 'NotProvided', ''],
     [3, 'Separated', ''],
     [4, 'Unknown', ''],
     [5, 'Unmarried', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
