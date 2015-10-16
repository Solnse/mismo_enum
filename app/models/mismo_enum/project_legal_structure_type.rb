# app/models/mismo_enum/project_legal_structure_type.rb
# enum

class MismoEnum::ProjectLegalStructureType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Specifies the form of ownership that defines the quality and quantity of'+
    ' ownership and rights to the individual unit owner.'
  end

  def self.seed
    [[1, 'Condominium', 'A project that is legally formed as a condominium '+
        'under the Condominium-Enabling Legislation of the state in which the'+
        ' project is located.'],
     [2, 'Cooperative', 'A project in which a corporation or business trust '+
        'holds title to the property and issues shares of stock as evidence '+
        'of ownership in the corporation or business trust. The corporation or'+
        ' business trust grants occupancy rights to the shareholder tenants '+
        'through proprietary leases. '],
     [3, 'CommonInterestApartment', 'Any project or building that is owned by '+
        'several owners as tenants in common or by a home owners association '+
        'in which individuals have an undivided interest in a residential '+
        'apartment building and land, and are the rights of exclusive '+
        'occupancy of a specific apartment in the building.'],
     [4, 'Unknown', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
