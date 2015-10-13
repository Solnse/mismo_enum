# app/models/mismo_enum/mortgage_type.rb
# enum

class MismoEnum::RateLockType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.seed
    [[1, 'BestEfforts', ''],
     [2, 'Mandatory', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
