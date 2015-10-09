# app/models/mismo/refinance_cash_out_determination_type.rb
# enum

class MismoEnum::RefinanceCashOutDeterminationType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

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
