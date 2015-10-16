# app/models/mismo_enum/refinance_cash_out_determination_type.rb
# enum

class MismoEnum::RefinanceCashOutDeterminationType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Specifies how the lender has classified a refinanced loan.'
  end

  def self.seed
    [[1, 'CashOut', ''],
     [2, 'LimitedCashOut', ''],
     [3, 'NoCashOut', ''],
     [4, 'Unknown', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
