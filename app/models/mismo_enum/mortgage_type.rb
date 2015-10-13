# app/models/mismo/mortgage_type.rb
# enum

class MismoEnum::MortgageType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.seed
    [[1, 'Conventional', 'Mortgage financing which is not insured or '+
       'guaranteed by a government agency.'],
     [2, 'FHA', "A loan originated in accordance with the guidelines of HUD's"+
       " Federal Housing Administration, a federal agency that provides "+
       "mortgage insurance on single-family, multifamily, manufactured homes "+
       "and hospital loans made by FHA-approved lenders throughout the United "+
       "States and its territories."],
     [3, 'LocalAgency', 'A loan originated in accordance with the guidelines '+
     	  'of an agency governed by a municipal jurisdiction.'],
     [4, 'Other', ''],
     [5, 'PublicAndIndianHousing', "A loan originated in accordance with the "+
     	  "guidelines of HUD's Office of Native American Programs, which "+
     	  "provides safe and affordable housing for lower-income Native "+
     	  "American, Alaska Native and Native Hawaiian families."],
     [6, 'StateAgency', 'A loan originated in accordance with the guidelines '+
     	  'of an agency governed by a state jurisdiction.'],
     [7, 'USDARuralDevelopment', "A loan originated in accordance with the "+
     	  "guidelines of the USDA Rural Development Agency's Housing and "+
     	  "Community Facilities Program, which provides funding for single "+
     	  "family homes in rural communities."],
     [8, 'VA', 'A loan originated in accordance with the guidelines of the '+
     	  'Department of Veterans Affairs’ Loan Guaranty Home Loan Program, '+
     	  'which guarantees loans made by private lenders, such as banks, '+
     	  'savings & loans, or mortgage companies to eligible veterans for the '+
     	  'purchase of a home which must be for their own personal occupancy.']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
