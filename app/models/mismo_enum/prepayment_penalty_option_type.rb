# app/models/mismo_enum/prepayment_penalty_option_type.rb
# enum

class MismoEnum::PrepaymentPenaltyOptionType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Identifies the type of early principal repayment eligible for a penalty'+
    ' charge.'
  end

  def self.seed
    [[1, 'Hard', 'Standard prepay penalty applies in all situations.'],
     [2, 'Soft', 'Borrower may sell property without penalty. However, '+
        'refinance will incur penalty.']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
