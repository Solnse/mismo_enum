# MismoEnum

MISMO Enum provides typical enumerations used in mortgage banking. This gem
was originally created to pull code out and use commonly among various
applications developed at PennyMac.

## Installation

add to your Gemfile

```ruby
gem 'mismo_enum'
```

bring in the migrations

```ruby
rails generate mismo_enum:install
```

seed the enum tables

```ruby
bundle exec rake mismo_enum:seed
```


The gem currently only supports postgresql since we are disabling auto increment
triggers when we insert the seed data. We do this so that we can always rely on
a specific record's id being consistent between projects.

### Development

Adding new Enum tables to the MISMO Enum gem should consist of the following:

* Add new class name to lib/mismo_enum/class_list.rb

* New model in models/mimso_enum should be namespaced and inherit from
MismoEnum::Base

* Add tests! This includes adding new model to
spec/dummy/lib/mismo_enum/class_list.rb
