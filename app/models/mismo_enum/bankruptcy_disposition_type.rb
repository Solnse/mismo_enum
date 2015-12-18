# app/models/mismo_enum/bankruptcy_disposition_type.rb
# enum

class MismoEnum::BankruptcyDispositionType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'The administrative standing of the bankruptcy case based upon a court '+
      'ruling at a procedural milestone.'
  end

  def self.seed
    [[1, 'Confirmed', 'The bankruptcy plan has been accepted by affected '+
           'parties'],
     [2, 'Discharged', 'The unsecured debt is no longer pursuable'],
     [3, 'Dismissed', 'The bankruptcy was not completed. Collection activites '+
           'can resume'],
     [4, 'Other', ''],
     [5, 'Pending', 'A bankruptcy action is currently waiting on a matter '+
           'resolution by the court']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
