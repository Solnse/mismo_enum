namespace :mismo_enum do
  desc 'Load Mismo Enum Seed data.'
  task seed: :environment do
    begin
      MismoEnum::Engine.load_seed
      puts "Database has been seeded with Mismo Enum data."
    rescue => error
      puts "Error: ", error
    end
  end

  desc 'Print out all models and their fields'
  task print_schema: :environment do
    Rails.application.eager_load!
    ActiveRecord::Base.descendants.sort_by(&:name).each do |model|
      puts model.name
      model.attribute_names.each do |attribute|
        puts "  #{attribute}"
      end
      puts
    end
  end
end
