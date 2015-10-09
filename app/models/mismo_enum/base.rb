# app/models/mismo/base.rb

class MismoEnum::Base < ActiveRecord::Base
  self.table_name_prefix = "mismo_enum_"
  self.abstract_class = true
end
