# app/models/mismo_enum/foreclosure_status_type.rb
# enum

class MismoEnum::ForeclosureStatusType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Indicates the most recent step in the foreclosure proceedings.'
  end

  def self.seed
    [[1, 'BreachNoticeSent', 'Breach letter has been sent to the borrower.'],
     [2, 'DeedInLieuCompleted', ''],
     [3, 'DeedInLeiuStarted', ''],
     [4, 'EvictionInProcess', 'Foreclosure sale has occurred and borrower\'s '+
           'redemption period (if applicable) has expired and eviction '+
           'proceedings are underway.'],
     [5, 'FirstLegalActionToCommenceForeclosure', ''],
     [6, 'Foreclosure Completed', ''],
     [7, 'Foreclosure Dismissed', ''],
     [8, 'ForeclosurePublicationCommenced', ''],
     [9, 'ForeclosureSaleConfirmed', ''],
     [10, 'ForeclosureSaleContinued', ''],
     [11, 'ForeclosureSaleHeld', ''],
     [12, 'ForeclosureSaleScheduled', 'Foreclosure sale has been scheduled'],
     [13, 'FormalNoticeFiled', 'Foreclosure legal action has been initiated by'+
            ' the servicer.'],
     [14, 'InRedemptionPeriod', 'Currently within the state\'s forclosure law '+
            'redemption period']
    ].each { |id, entry, desc| create(id: id,
                                      name:        entry,
                                      description: desc) }
  end
end
