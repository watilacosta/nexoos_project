# frozen_string_literal: true

# == Schema Information
#
# Table name: requesters
#
#  id           :bigint           not null, primary key
#  company_name :string
#  cnpj         :string
#  address      :string
#  phone        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
FactoryBot.define do
  factory :requester do
    company_name { Faker::Company.name }
    cnpj         { Faker::CNPJ.numeric }
    address      { Faker::Address.street_address }
    phone        { Faker::PhoneNumber.phone_number }
  end
end
