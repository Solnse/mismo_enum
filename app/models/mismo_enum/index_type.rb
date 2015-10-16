# app/models/mismo_enum/index_type.rb
# enum

class MismoEnum::IndexType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Specifies the general category of mortgage index upon which adjustments'+
    ' will be based.'
  end

  def self.seed
    [[1, 'LIBOR', 'London Interbank Offered Rate'],
     [2, 'ConstantMaturityTreasury', 'Often referred to as CMT'],
     [3, 'BankPrimeLoan', 'Often referred to as Prime Rate'],
     [4, 'CertificateOfDepositIndex', 'Often referred to as CODI'],
     [5, 'CostOfSavingsIndex', 'Often referred to as COSI'],
     [6, 'EleventhDistrictCostOfFundsIndex', 'Often referred to as COFI'],
     [7, 'Other', ''],
     [8, 'TreasuryBill', 'Often referred to as T-Bill'],
     [9, 'TwelveMonthTreasuryAverage', 'Often referred to as MTA']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
