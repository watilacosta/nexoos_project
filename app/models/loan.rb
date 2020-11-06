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
# Empréstimo
class Loan < ApplicationRecord
  belongs_to :requester
  has_many :portions, dependent: :destroy
end
