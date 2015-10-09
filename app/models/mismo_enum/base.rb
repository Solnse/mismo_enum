# app/models/mismo/base.rb

class MismoEnum::Base < ActiveRecord::Base
  self.table_name_prefix = "mismo_"
  self.abstract_class = true
end
