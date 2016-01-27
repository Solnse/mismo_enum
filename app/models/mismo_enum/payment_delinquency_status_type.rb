# app/models/mismo_enum/payment_delinquency_status_type.rb
# enum

class MismoEnum::PaymentDelinquencyStatusType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Reports the delinquency status of the specific delinquency event.'
  end

  def self.seed
    [[1, 'MoreThan120Days', ''],
     [2, 'MoreThan30Days', ''],
     [3, 'MoreThan60Days', ''],
     [4, 'MoreThan90Days', ''],
     [5, 'NotDelinquent', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
