# app/models/mismo_enum/bankruptcy_status_type.rb
# enum

class MismoEnum::BankruptcyStatusType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'The documented status of the bankruptcy'
  end

  def self.seed
    [[1, 'Active', 'The bankruptcy is ongoing'],
     [2, 'Closed', 'The case has been closed by the bankruptcy court.'],
     [3, 'Other', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
