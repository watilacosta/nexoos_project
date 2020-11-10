# frozen_string_literal: true

# == Schema Information
#
# Table name: portions
#
#  id         :bigint           not null, primary key
#  loan_id    :bigint           not null
#  due_date   :date
#  amount     :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Parcela
class Portion < ApplicationRecord
  belongs_to :loan

  validates :loan, :due_date, :amount, presence: true

  def self.calculate_amount(loan)
    loan_amount = loan.amount
    tax    = loan.tax
    term   = loan.term
    amount = (loan_amount * ((((1 + tax)**term) * tax) / (((1 + tax)**term) - 1)))
    amount.round(2)
  end

  def generate
    loan.term.times do |term|
      Portion.create!(
        loan_id: loan_id,
        due_date: due_date.advance(months: term),
        amount: amount
      )
    end
  end
end
