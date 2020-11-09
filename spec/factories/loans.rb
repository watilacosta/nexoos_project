# frozen_string_literal: true

# == Schema Information
#
# Table name: loans
#
#  id           :bigint           not null, primary key
#  amount       :decimal(, )
#  term         :integer
#  tax          :decimal(, )
#  requester_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
FactoryBot.define do
  factory :loan do
    amount { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    term   { Faker::Number.within(range: 1..60) }
    tax    { 0.015 }
    requester
  end
end
