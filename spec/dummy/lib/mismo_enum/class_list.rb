module MismoEnum::ClassList

  UTIL_ENUMS = %w{
    postal_state
  }

  BORROWER_ENUMS = %w{
    borrower_classification_type
    taxpayer_identifier_type
    marital_status_type
    gender_type
    citizenship_residency_type
  }

  LOAN_ENUMS = %w{
    amortization_type
    automated_underwriting_system_type
    index_type
    loan_purpose_type
    prepayment_penalty_option_type
    refinance_cash_out_determination_type
  }

  PROPERTY_ENUMS = %w{
    construction_method_type
    project_design_type
    project_legal_structure_type
    property_usage_type
    property_valuation_method_type
  }

  ENUMS = UTIL_ENUMS +
          BORROWER_ENUMS +
          LOAN_ENUMS +
          PROPERTY_ENUMS

  ENUM_CLASSES = ENUMS.map(&:camelize)
end
