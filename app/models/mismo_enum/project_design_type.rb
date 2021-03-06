# app/models/mismo_enum/project_design_type.rb
# enum

class MismoEnum::ProjectDesignType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'This field specifies the type of design for the multiple unit buildings'+
    ' in a project.'
  end

  def self.seed
    [[1, 'GardenProject', ''],
     [2, 'HighriseProject', ''],
     [3, 'MidriseProject', ''],
     [4, 'TownhouseRowhouse', 'One in a row of identical houses or having '+
        'common wall. Attached to another unit via common wall (e.g., a '+
        'brownstone.)']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
