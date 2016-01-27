# app/models/mismo_enum/loan_delinquency_status_type.rb
# enum

class MismoEnum::LoanDelinquencyStatusType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Loan Delinquency Status Type is used to report the status of a delinquent'+
      ' loan (i.e., is the loan in delinquency, foreclosure, bankruptcy, or '+
      'some other status).'
  end

  def self.seed
    [[1, 'AssignmentPursued', 'An FHA-insured mortgage that qualifies for HUD '+
           'special assignment procedures is in the process of being assigned '+
           'to HUD.'],
     [2, 'Assumption', 'The Servicer is working with the borrower to sell the '+
           'property by permitting the purchaser to pay the delinquent '+
           'installments and assume the outstanding debt.'],
     [3, 'ChapterElevenBankruptcy', 'The borrower has filed for bankruptcy '+
           'under Chapter 11 of the Federal Bankruptcy Act.'],
     [4, 'ChapterSevenBankruptcy', 'The borrower has filed for bankruptcy '+
           'under Chapter 7 of the Federal Bankruptcy Act.'],
     [5, 'ChapterThirteenBankruptcy', 'The borrower has filed for bankruptcy '+
           'under Chapter 13 of the Federal Bankruptcy Act.'],
     [6, 'ChapterTwelveBankruptcy', 'The borrower has filed for bankruptcy '+
           'under Chapter 12 of the Federal Bankruptcy Act. A Chapter 12 '+
           'bankruptcy is a bankruptcy action that involves the reorganization'+
           ' of a family farming business.'],
     [7, 'ChargeOffPursued', 'The investor has agreed not to pursue collection'+
           ' efforts or legal actions against the borrower because of a '+
           'reduced value for the property, a low outstanding mortgage '+
           'balance, or the presence of environmental hazards on the '+
           'property.'],
     [8, 'ContestedForeclosure', 'Borrower has contested the legal action of '+
           'the servicer or there is litigation pending or filed that '+
           'adversely affects the property. For example, a borrower or other '+
           'defendant interposes an answer to an action, or files a '+
           'countersuit.'],
     [9, 'Current', 'The loan has been made current and is no longer '+
           'delinquent.'],
     [10, 'DelinquentNoAction', 'Considered delinquent based on investor '+
            'guidelines, but the servicer has not taken legal action.'],
     [11, 'DrugSeizure', 'The Department of Justice or a state/local agency '+
            'has decided to seize (or has seized) a property under the '+
            'forfeiture provision of the Controlled Substances Act.'],
     [12, 'Forbearance', 'The Servicer has authorized a temporary suspension '+
            'of payments or a repayment plan that calls for periodic payments '+
            'of less than the normal monthly payment, or periodic payments at '+
            'different intervals, to give the borrower additional time to '+
            'bring the mortgage current.'],
     [13, 'Foreclosure', 'The Servicer has referred the case to an attorney to'+
            ' take legal action to acquire the property through a foreclosure '+
            'sale.'],
     [14, 'GovernmentSeizure', 'An action by a local agency to seize or '+
            'initiate forfeiture proceedings against a property.'],
     [15, 'MediationReferral', 'The mortgage loan has been referrerd to '+
            'mediation.'],
     [16, 'MilitaryIndulgence', 'The Servicer has granted a delinquent service'+
            ' member forbearance or a stay in foreclosure proceedings under '+
            'the provisions of the Soldiers and Sailors Civil Relief Act.'],
     [17, 'Modification', 'The Servicer is working with the borrower to '+
            'renegotiate the terms of the mortgage.'],
     [18, 'PreforeclosureSalePlanned', 'The Servicer plans to pursue a '+
            'preforeclosure sale with a payoff of less than the full amount '+
            'of indebtedness.'],
     [19, 'Probate', 'The Servicer cannot pursue (or complete) foreclosure '+
            'action because proceedings required to verify a will of a '+
            'deceased mortgagor are in process.'],
     [20, 'Refinance', 'The Servicer is pursuing a new loan in which the '+
            'existing first mortgage is paid off with the proceeds of the new '+
            'mortgage.'],
     [21, 'RepaymentPlan', 'A written or verbal agreement between the Servicer'+
            ' and the borrower that gives the borrower a defined period of '+
            'time to reinstate the mortgage by making payments in excess of '+
            'the monthly payment.'],
     [22, 'SecondLienConsiderations', 'The Servicer is evaluating the pros and'+
            ' cons of pursuing foreclosure or recommending that the debt be '+
            'charged off on a second mortgage.'],
     [23, 'ShortSalePlanning', 'The Servicer is working with the borrower to '+
            'pursue a short sale.'],
     [24, 'TrialModificationActive', 'The borrower has been approved to '+
            'participate in a modification that requires a trial period plan '+
            'and is current on their trial payments.'],
     [25, 'VeteransAffairsBuydown', 'The investor has agreed to make a cash '+
            'contribution to reduce the outstanding indebtedness of a '+
            'VA-guaranteed mortgage, for which the Department of Veterans '+
            'Affairs failed to establish an "upset price" bid for the '+
            'foreclosure sale, in order to get the VA to reconsider its '+
            'decision. Servicer has completed processing the Buydown.'],
     [26, 'VeteransAffairsNoBids', 'The Department of Veterans Affairs refused'+
            ' to establish an \"upset price\" to be bid at the foreclosure sale '+
            'of a VA-guaranteed mortgage that the Servicer had referred for '+
            'foreclosure. Servicer is pursuing a buydown, charge-off or other '+
            'alternative.'],
     [27, 'VeteransAffairsRefundPursued', 'The Department of Veterans Affairs '+
            'has requested information about a VA-guaranteed mortgage the '+
            'Servicer had referred for foreclosure in order to decide whether '+
            'to accept an assignment and refund the mortgage.'],
     [28, 'Workout', 'There is a workout being pursued on the loan that will '+
            'help bring the loan current or liquidate the loan to avoid '+
            'foreclosure.']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
