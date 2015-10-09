# app/models/mismo/prepayment_penalty_option_type.rb
# enum

class MismoEnum::PrepaymentPenaltyOptionType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.seed
    [[1, 'Hard', 'Standard prepay penalty applies in all situations.'],
     [2, 'Soft', 'Borrower may sell property without penalty. However, '+
        'refinance will incur penalty.']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
