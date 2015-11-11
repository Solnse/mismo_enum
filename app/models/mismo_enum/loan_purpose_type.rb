# app/models/mismo_enum/loan_purpose_type.rb
# enum

class MismoEnum::LoanPurposeType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Specifies the purpose for which the loan proceeds will be used.'
  end

  def self.seed
    [[1, 'Purchase', 'A loan made in association with the original purchase of'+
        ' a piece of property.'],
     [2, 'Refinance', 'The repayment of a debt from proceeds of a new loan '+
        'using the same property as security or a mortgage secured by a '+
        'property previously owned free and clear by the Borrower.'],
     [3, 'MortgageModification', 'Terms of the mortgage are modified from the '+
        'original terms agreed to by the lender and borrower'],
     [4, 'Other', ''],
     [5, 'Unknown', 'Loan Purpose has not been reported or is not known.']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
