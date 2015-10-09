# app/models/mismo/borrower_classification_type.rb
# enum

class MismoEnum::BorrowerClassificationType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.seed
    [[1, 'Primary', ''],
     [2, 'Secondary', '']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
