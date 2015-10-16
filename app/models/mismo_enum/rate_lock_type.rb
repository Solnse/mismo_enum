# app/models/mismo_enum/rate_lock_type.rb
# enum

class MismoEnum::RateLockType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Specifies the method by which the rate lock period will be determined.'
  end

  def self.seed
    [[1, 'BestEfforts', ''],
     [2, 'Mandatory', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
