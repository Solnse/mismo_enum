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
    [[1, 'Manufactured', 'A factory built dwelling built in compliance with '+
        'the Federal Manufactured Home Construction and Safety Standards in '+
        'effect at the time the home was manufactured as evidenced by the HUD'+
        ' label. (HUD Code Home)'],
     [2, 'MobileHome', 'Dwelling unit constructed on a base frame which '+
        'features wheels and axles to be used in transporting home from place'+
        ' to place, does not meet HUD code.'],
     [3, 'Modular', 'A factory built dwelling not on a permanent chassis.'],
     [4, 'OnFrameModular', 'A factory built dwelling on a permanent chassis '+
        'which does not have a HUD label.'],
     [5, 'Other', ''],
     [6, 'SiteBuilt', 'Describes construction process, indicating that most '+
        'elements are created at the homes permanent site. May include some '+
        'prefabricated components.']

    ].each { |id, entry, desc| create(id: id,
                                      name:        entry,
                                      description: desc) }
  end
end
