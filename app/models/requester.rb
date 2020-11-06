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
#
class Requester < ApplicationRecord # :nodoc:
  validates :company_name, :cnpj, :address, :phone, presence: true
  validate :validate_cnpj

  def validate_cnpj
    errors.add(:cnpj, 'não é válido') unless CNPJ.valid?(cnpj)
  end
end
