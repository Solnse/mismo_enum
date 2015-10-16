# app/models/mismo_enum/property_valuation_method_type.rb
# enum

class MismoEnum::PropertyValuationMethodType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Specifies the method by which the property value was assessed.'
  end

  def self.seed
    [[1, 'AutomatedValuationModel', ''],
     [2, 'DesktopAppraisal', 'This appraisal valuation is commonly used for '+
        'refinancing, home equity loans, and home equity lines of credit.  The'+
        ' appraiser determines the value of the property through public '+
        'records, tax assessments and comparable sales history.'],
     [3, 'DriveBy', ''],
     [4, 'FullAppraisal', ''],
     [5, 'None', ''],
     [6, 'Other', ''],
     [7, 'PriorAppraisalUsed', ''],
     [8, 'BrokerPriceOption', ''],
     [9, 'TaxValuation', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
