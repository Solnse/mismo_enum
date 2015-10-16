# app/models/mismo_enum/property_valuation_state_type.rb
# enum

class MismoEnum::PropertyValuationStateType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Specifies that the subject property valuation amount is the amount at the'+
    ' point of origination or a subsequent evaluation.'
  end

  def self.seed
    [[1, 'Original', ''],
     [2, 'Subsequent', '']
    ].each { |id, entry, desc| create(id: id,
                                      name:        entry,
                                      description: desc) }
  end
end
