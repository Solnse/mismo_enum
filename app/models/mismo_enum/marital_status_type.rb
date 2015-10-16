# app/models/mismo_enum/marital_status_type.rb
# enum

class MismoEnum::MaritalStatusType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'The marital status of the party as disclosed by the party.'
  end

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
