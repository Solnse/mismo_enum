# app/models/mismo_enum/index_source_type.rb
# enum

class MismoEnum::IndexSourceType < MismoEnum::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  def self.description
    'Specifies the type and source of index to be used to determine the '+
      'interest rate at each adjustment'
  end

  def self.seed
    [[1, 'FHLBEleventhDistrictMonthlyCostOfFundsIndex', 'The monthly weighted '+
           'average cost of savings, borrowings, and advances of members of '+
           'the Federal Home Loan Bank of San Francisco (the Bank), as made '+
           'available by the Bank.'],
     [2, 'LIBOROneMonthWSJ25thDayOfMonth', 'The average of interbank offered '+
           'rates for one month U.S. dollar-denominated deposits in the London'+
           ' market (LIBOR), as published in the Wall Street Journal on the '+
           '25th day of each month.'],
     [3, 'LIBOROneMonthWSJ25thDayOfMonthOrNextBusinessDay', 'The average of '+
           'interbank offered rates for one month U.S. dollar-denominated '+
           'deposits in the London market (LIBOR), as published in the Wall '+
           'Street Journal on the 25th day of each month (or next business day'+
           ' after the 25th day of the month if the 25th falls on a holiday or'+
           ' weekend).'],
     [4, 'LIBOROneMonthWSJDaily', 'The average of interbank offered rates for '+
           'one month U.S. dollar-denominated deposits in the London market '+
           '(LIBOR), as published in the Wall Street Journal.'],
     [5, 'LIBOROneMonthWSJFifteenthDayOfMonth', 'The average of interbank '+
           'offered rates for one month U.S. dollar-denominated deposits in '+
           'the London market (LIBOR), as published in the Wall Street Journal'+
           ' on the 15th day of each month.'],
     [6, 'LIBOROneMonthWSJFifteenthDayOfMonthOrNextBusinessDay', 'The average '+
           'of interbank offered rates for one month U.S. dollar-denominated '+
           'deposits in the London market (LIBOR), as published in the Wall '+
           'Street Journal on the 15th day of each month (or next business day'+
           ' after the 15th day of the month if the 15th falls on a holiday or'+
           ' weekend).'],
     [7, 'LIBOROneYearWSJDaily', 'The average of interbank offered rates for '+
           'one year U.S. dollar-denominated deposits in the London market '+
           '(LIBOR), as published in the Wall Street Journal.'],
     [8, 'LIBORSixMonthWSJ25thDayOfMonth', 'The average of interbank offered '+
           'rates for six month U.S. dollar-denominated deposits in the London'+
           ' market (LIBOR), as published in the Wall Street Journal on the '+
           '25th day of each month.'],
     [9, 'LIBORSixMonthWSJ25thDayOfMonthOrNextBusinessDay', 'The average of '+
           'interbank offered rates for six month U.S. dollar-denominated '+
           'deposits in the London market (LIBOR), as published in the Wall '+
           'Street Journal on the 25th day of each month (or next business day'+
           ' after the 25th day of the month if the 25th falls on a holiday or'+
           ' weekend).'],
     [10, 'LIBORSixMonthWSJFifteenthDayOfMonth', 'The average of interbank '+
            'offered rates for six month U.S. dollar-denominated deposits in '+
            'the London market (LIBOR), as published in the Wall Street '+
            'Journal on the 15th day of each month.'],
     [11, 'LIBORSixMonthWSJFifteenthDayOfMonthOrNextBusinessDay', ' The '+
            'average of interbank offered rates for six month U.S. '+
            'dollar-denominated deposits in the London market (LIBOR), as '+
            'published in the Wall Street Journal on the 15th day of each '+
            'month (or next business day after the 15th day of the month if '+
            'the 15th falls on a holiday or weekend).'],
     [12, 'LIBORSixMonthWSJLastBusinessDayOfMonth', 'The average of interbank '+
          'offered rates for six month U.S. dollar-denominated deposits in '+
          'the London market (LIBOR), as published in the Wall Street Journal '+
          'on the last business day of the month.'],
     [13, 'MonthlyFiveYearTreasurySecuritiesConstantMaturityFRBH15', 'The '+
            'monthly average yield on United States Treasury securities '+
            'adjusted to constant maturity of five years, as made available by'+
            ' the Federal Reserve Board.'],
     [14, 'MonthlyOneYearTreasurySecuritiesConstantMaturityFRBH15', 'The '+
            'monthly average yield on United States Treasury securities '+
            'adjusted to constant maturity of one year, as made available by '+
            'the Federal Reserve Board.'],
     [15, 'MonthlyThreeYearTreasurySecuritiesConstantMaturityFRBH15', 'The '+
            'monthly average yield on United States Treasury securities '+
            'adjusted to constant maturity of three years, as made available '+
            'by the Federal Reserve Board.'],
     [16, 'NationalAverageContractMortgageRate', 'The National Average '+
            'Contract Mortgage Rate, as derived from the Federal Housing '+
            'Finance Board monthly interest rate survey (MIRS).'],
     [17, 'Other', ''],
     [18, 'PrimeRateWSJEffectiveDate', 'The Prime Rate (effective as of the '+
            'published Effective Date) as published in the Money Rates '+
            'section of the Wall Street Journal.'],
     [19, 'PrimeRateWSJPublicationDate', 'The Prime Rate as published in the '+
            'Money Rates section of the Wall Street Journal.'],
     [20, 'SixMonthLIBOR_WSJDaily', 'The average of the interbank offered '+
            'rates for six months U.S. dollar-denominated deposits in the '+
            'London market (LIBOR), as published in the Wall Street Journal.'],
     [21, 'SixMonthLIBOR_WSJFirstBusinessDayOfTheMonth', 'The average of the '+
            'interbank offered rates for six months U.S. dollar-denominated '+
            'deposits in the London market (LIBOR), as published in the Wall '+
            'Street Journal. The most recent index figure available as of the '+
            'first business day of the month immediately preceding the month '+
            'in which the Change Date occurs is the Current Index.'],
     [22, 'SixMonthUSTBillMonthlyAuctionDiscountRateCalculated', 'The twelve '+
            '(12) month average of the monthly auction average (discount rate)'+
            ' on United States Treasury bills with a maturity of six months '+
            '[or twenty-six weeks], as made available by the Federal Reserve '+
            'Board'],
     [23, 'SixMonthUSTBillMonthlyAuctionInvestmentYieldCalculated', 'The '+
            'monthly auction average (investment yield) on United States '+
            'Treasury bills with a maturity of six months [or twenty-six '+
            'weeks], as made available by the Federal Reserve Board.'],
     [24, 'SixMonthUSTBillWeeklyAuctionDiscountRateUST', 'The weekly auction '+
            'average (discount rate) on United States Treasury bills with a '+
            'maturity of six months [or twenty-six weeks], as made available '+
            'by the U.S. Treasury after the sale of these securities.'],
     [25, 'SixMonthUSTBillWeeklyAuctionInvestmentYieldUST', 'The weekly '+
            'auction average (investment yield) on United States Treasury '+
            'bills with a maturity of six months [or twenty-six weeks], as '+
            'made available by the U.S. Treasury after the sale of these '+
            'securities.'],
     [26, 'WeeklyFiveYearTreasurySecuritiesConstantMaturityFRBH15', 'The '+
            'weekly average yield on United States Treasury securities '+
            'adjusted to constant maturity of five years, as made available '+
            'by the Federal Reserve Board.'],
     [27, 'WeeklyOneYearTreasurySecuritiesConstantMaturityFRBH15', 'The '+
            'weekly average yield on United States Treasury securities '+
            'adjusted to constant maturity of one year, as made available by '+
            'the Federal Reserve Board.'],
     [28, 'WeeklySixMonthCertificateOfDepositSecondaryMarketFRBH15', 'The '+
            'weekly average yield of the secondary market interest rates on '+
            'six-month negotiable certificates of deposit, as made by the '+
            'Federal Reserve Board.'],
     [29, 'WeeklyTenYearTreasurySecuritiesConstantMaturityFRBH15', 'The weekly'+
            ' average yield on United States Treasury securities adjusted to '+
            'constant maturity of ten years, as made available by the Federal '+
            'Reserve Board.'],
     [30, 'WeeklyThreeYearTreasurySecuritiesConstantMaturityFRBH15', 'The '+
            'weekly average yield on United States Treasury securities '+
            'adjusted to constant maturity of three years, as made available '+
            'by the Federal Reserve Board.']
    ].each { |id, entry, desc| create(id:          id,
                                      name:        entry,
                                      description: desc) }
  end
end
