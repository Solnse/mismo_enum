class CreateMismoEnums < ActiveRecord::Migration
  def up
    MismoEnum::ClassList::ENUMS.each { |n|
      tname = "mismo_#{n.pluralize}".to_sym

      create_table tname do |t|
        t.string :name, null: false
        t.text :description
      end

      add_index tname, :name, { :unique => true }

      if serial_sequence(tname, "id")
        ActiveRecord::Base.connection.
          execute("DROP SEQUENCE mismo_#{n.pluralize}_id_seq CASCADE;")
      end
    }
  end

  def down
    MismoEnum::ClassList::ENUMS.each { |n|
      tname = "mismo_#{n.pluralise}".to_sym
      drop_table tname
    }
  end
end
