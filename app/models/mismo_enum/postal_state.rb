# app/models/mismo_enum/postal_state.rb
# utility enum (not mismo)

class MismoEnum::PostalState < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'List of states and territories with accompanying Postal abbreviation.'+
    ' https://en.wikipedia.org/wiki/List_of_U.S._state_abbreviations'
  end

  def self.seed
    [[1, 'AK',  'Alaska'],
    [2, 'AL', 'Alabama'],
    [3, 'AR', 'Arkansas'],
    [4, 'AZ', 'Arizona'],
    [5, 'CA', 'California'],
    [6, 'CO', 'Colorado'],
    [7, 'CT', 'Connecticut'],
    [8, 'DE', 'Delaware'],
    [9, 'FL', 'Florida'],
    [10, 'GA', 'Georgia'],
    [11, 'HI', 'Hawaii'],
    [12, 'IA', 'Iowa'],
    [13, 'ID', 'Idaho'],
    [14, 'IL', 'Illinois'],
    [15, 'IN', 'Indiana'],
    [16, 'KS', 'Kansas'],
    [17, 'KY', 'Kentucky'],
    [18, 'LA', 'Louisiana'],
    [19, 'MA', 'Massachusetts'],
    [20, 'MD', 'Maryland'],
    [21, 'ME', 'Maine'],
    [22, 'MI', 'Michigan'],
    [23, 'MN', 'Minnesota'],
    [24, 'MO', 'Missouri'],
    [25, 'MS', 'Mississippi'],
    [26, 'MT', 'Montana'],
    [27, 'NC', 'North Carolina'],
    [28, 'ND', 'North Dakota'],
    [29, 'NE', 'Nebraska'],
    [30, 'NH', 'New Hampshire'],
    [31, 'NJ', 'New Jersey'],
    [32, 'NM', 'New Mexico'],
    [33, 'NV', 'Nevada'],
    [34, 'NY', 'New York'],
    [35, 'OH', 'Ohio'],
    [36, 'OK', 'Oklahoma'],
    [37, 'OR', 'Oregon'],
    [38, 'PA', 'Pennsylvania'],
    [39, 'RI', 'Rhode Island'],
    [40, 'SC', 'South Carolina'],
    [41, 'SD', 'South Dakota'],
    [42, 'TN', 'Tennessee'],
    [43, 'TX', 'Texas'],
    [44, 'UT', 'Utah'],
    [45, 'VA', 'Virginia'],
    [46, 'VT', 'Vermont'],
    [47, 'WA', 'Washington'],
    [48, 'WI', 'Wisconsin'],
    [49, 'WV', 'West Virginia'],
    [50, 'WY', 'Wyoming'],

    # Evil Empire
    [51, 'DC', 'District of Columbia'],

    # Territories
    [52, 'AS', 'American Samoa'],
    [53, 'GU', 'Guam'],
    [54, 'MP', 'Northern Mariana Islands'],
    [55, 'PR', 'Puerto Rico'],
    [56, 'VI', 'U.S. Virgin Islands'],
    [57, 'UM', 'United States Minor Outlying Islands'],

    # Freely Associated States
    [58, 'AA', 'Federated States of Micronesia'],
    [59, 'MH', 'Marshall Islands'],
    [60, 'PW', 'Palau'],

    # Armed Forces
    [61, 'AA', 'Armed Forces Americas (except Canada)'],
    [62, 'AE', 'Armed Forces Europe (covers all USARAEUR, Armed Forces Canada, ' +
           'Armed Forces Middle East, Armed Forces Africa'],
    [63, 'AP', 'Armed Forces Pacific'],

    # No Longer Used
    [64, 'CZ', 'Canal Zone'],
    [65, 'TT', 'Trust Territory of the Pacific Islands'],
    [66, 'PI', 'Rizal State']
    ].each { |id, short_name, name| create(:id => id,
                                           :name => short_name,
                                           :description => name) }
  end
end
