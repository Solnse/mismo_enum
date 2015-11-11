# app/models/mismo_enum/loan_state_type.rb
# enum

class MismoEnum::LoanStateType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Identifies the state in time for the information associated with this '+
    'occurrance of LOAN'
  end

  def self.seed
    [[1, 'AtBankruptcyFiling', 'A snapshot of the loan data at the time a '+
         'borrower files for bankruptcy.'],
     [2, 'AtClosing', 'A snapshot of the loan data at the completion of the '+
         'closing process. This is sometimes referred to as "original".'],
     [3, 'AtConversion', 'For loans with a conversion option, a snapshot of '+
         'the loan data at the time the conversion features become effective '+
         '(e.g., biweekly to monthly payments; adjustable to fixed rate '+
           'amortization).'],
     [4, 'AtEstimate', 'A snapshot of the loan data at the point in time when '+
         'a loan estimate is disclosed.'],
     [5, 'AtModification', 'For loans which undergo term modifications not '+
         'originally specified in the note, a snapshot of the loan data at '+
         'the time the new note terms become effective.'],
     [6, 'AtRelief', 'For loans subject to payment relief, a snapshot of the '+
         'loan data at the time the relief is initiated.'],
     [7, 'AtReset', 'For balloon mortgages with a reset feature, a snapshot '+
         'of the loan data on the balloon maturity date at the time the '+
         'borrower exercises the reset option to modify and extend the '+
         'balloon note.'],
     [8, 'AtTransfer', 'A snapshot of the loan data as of the effective date '+
         'of the servicing transfer.'],
     [9, 'AtTrial', 'A snapshot of the loan data at the initiation of a trial '+
         'period for a workout modification.'],
     [10, 'AtUnderwriting', 'A snapshot of the loan data at the point at which '+
          'the underwriting recommendation is made.'],
     [11, 'Current', 'A snapshot of the loan data as of the "Loan State Date".']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
