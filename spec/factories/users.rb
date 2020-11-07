# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  name                   :string
#  role                   :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
FactoryBot.define do
  factory :user do
    email                 { Faker::Internet.email(domain: 'nexoos') }
    password              { '123456' }
    password_confirmation { '123456' }
    name                  { Faker::Name.name }
    role                  { :admin }
  end
end
