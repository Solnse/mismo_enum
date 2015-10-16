# app/models/mismo_enum/automated_underwriting_system_type.rb
# enum

class MismoEnum::AutomatedUnderwritingSystemType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'The type of automated underwriting system used to evaluate the loan.'
  end

  def self.seed
    [[1, 'DesktopUnderwriter', 'Fannie Mae'],
     [2, 'GuaranteedUnderwritingSystem', ''],
     [3, 'FHAScorecard', 'The loan scoring tool used by lenders to manage '+
         'workflow and expedite the endorsement process for FHA loans. The FHA'+
         ' TOTAL Scorecard evaluates the overall creditworthiness of the '+
         'applicants and determines an associated risk level of a loan\'s '+
         'eligibility for insurance by FHA.'],
     [4, 'LoanProspector', 'Freddie Mac'],
     [5, 'Other', ''],
     [6, 'Assetwise', 'GMAC / RFC'],
     [7, 'Capstone', ''],
     [8, 'Clues', 'Bank of America'],
     [9, 'ECS', 'Wells Fargo'],
     [10, 'Strategyware', ''],
     [11, 'Zippy', 'Chase']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
