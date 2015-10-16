# app/models/mismo_enum/amortization_type.rb
# enum

class MismoEnum::AmortizationType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'A classification or description of a loan or a group of loans generally'+
    ' based on the changeability of the rate or payment over time.'
  end

  def self.seed
    [[1, 'Fixed', 'A mortgage in which the interest rate and payments remain '+
        'the same for the life of the loan.'],
     [2, 'AdjustableRate', 'A mortgage that allows the lender to adjust the '+
        'interest rate in accordance with a specified index periodically.'],
     [3, 'GEM', '(Growing Equity Mortgage) - A graduated payment mortgage in '+
        'which increases in a borrowers mortgage payments are used to '+
        'accelerate reduction of principal on the mortgage. Due to increased '+
        'payment, the borrower acquires equity more rapidly and retires the '+
        'debt earlier.'],
     [4, 'GPM', '(Graduated Payment Mortgage) A type of flexible payment '+
        'mortgage where the payments increase for a specified period of time '+
        'and then level off. Usually involves negative amortization.'],
     [5, 'GraduatedPaymentARM', 'Periodic payments/rate changes with '+
        'additional specified principal and interest changes as documented in '+
        'the Security Instruments.'],
     [6, 'Other', 'Used to describe the amortization type if it is other than '+
        'those specified in the enumerated list of Loan Amortization Types.'],
     [7, 'RateImprovementMortgage', 'A type of flexible mortgage where the '+
        'interest rate may decrease based on payment history.'],
     [8, 'Step', 'Fixed periodic payment/rate changes without subsidy or '+
        'negative amortization.']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
