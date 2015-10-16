# app/models/mismo_enum/definition_of_value_type.rb
# enum

class MismoEnum::DefinitionOfValueType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Indicates the type of value used for this collateral valuation product'
  end

  def self.seed
    [[1, 'AsIsValue', ''],
     [2, 'AsRepaired', ''],
     [3, 'ForecastValue', 'The anticipated selling price of a property as of a'+
           ' defined time-period or date.'],
     [4, 'MarketValue', ''],
     [5, 'Other', ''],
     [6, 'QuickSaleValue', ''],
     [7, 'RetrospectiveValue', '']
    ].each { |id, entry, desc| create(id: id,
                                      name:        entry,
                                      description: desc) }
  end
end
