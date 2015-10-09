require 'spec_helper'

module MismoEnum
  FactoryGirl.define do

    factory :postal_state, :class => MismoEnum::PostalState do |f|
    	f.id { 5 }
    	f.name { 'CA' }
    	f.description { 'California' }
    end
  end
end
