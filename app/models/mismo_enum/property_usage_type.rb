# app/models/mismo_enum/property_usage_type.rb
# enum

class MismoEnum::PropertyUsageType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Borrowers answer to the question: What type of property did you own'+
    ' principal residence, second home, or investment property? Collected on'+
    ' the URLA in Section VIII line m1.'
  end

  def self.seed
    [[1, 'Investment', 'A home owned for the purpose of generating income by '+
        'renting the property.'],
     [2, 'PrimaryResidence', 'Residence that the owner physically occupies and'+
       ' uses as his or her principal residence.'],
     [3, 'SecondHome', 'A property occupied by the owner for a portion of the'+
       ' year and is not the primary residence.'],
     [4, 'Other', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
