module MismoEnum::ClassList

  # alphabetic order
  BORROWER_ENUMS = %w{
    bankruptcy_disposition_type
    bankrupcty_status_type
    borrower_classification_type
    citizenship_residency_type
    gender_type
    marital_status_type
    taxpayer_identifier_type
  }

  LOAN_ENUMS = %w{
    amortization_type
    automated_underwriting_system_type
    foreclosure_status_type
    index_type
    loan_purpose_type
    loan_state_type
    mortgage_type
    prepayment_penalty_option_type
    rate_lock_type
    refinance_cash_out_determination_type
  }

  PROPERTY_ENUMS = %w{
    construction_method_type
    definition_of_value_type
    project_design_type
    project_legal_structure_type
    property_usage_type
    property_valuation_method_type
    property_valuation_state_type
  }

  UTIL_ENUMS = %w{
    postal_state
  }

  ENUMS = BORROWER_ENUMS +
          LOAN_ENUMS +
          PROPERTY_ENUMS +
          UTIL_ENUMS

  ENUM_CLASSES = ENUMS.map(&:camelize)
end
