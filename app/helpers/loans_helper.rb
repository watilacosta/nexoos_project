# frozen_string_literal: true

module LoansHelper
  def show_parcelas(loan)
    tax    = loan.tax
    amount = loan.amount
    term   = loan.term

    parcelas = amount * ((((1 + tax)**term) * tax) / (((1 + tax)**term) - 1))
    "#{term} x #{number_to_currency(parcelas)} -
     (Juros: #{number_to_percentage((tax * 100),
                                    precision: 2,
                                    strip_insignificant_zeros: true)})"
  end
end
