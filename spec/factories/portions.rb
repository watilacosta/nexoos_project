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
FactoryBot.define do
  factory :portion do
    loan
    due_date { Faker::Date.forward(days: 5) }
    amount   { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
  end
end
