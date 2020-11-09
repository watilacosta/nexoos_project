# frozen_string_literal: true

require 'rails_helper'

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
RSpec.describe Requester, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:company_name) }
    it { is_expected.to validate_presence_of(:cnpj) }
    it 'CNPJ invalid format' do
      subject.cnpj = '123456987'
      subject.valid?
      expect(subject.errors[:cnpj]).to match_array('não é válido')
    end
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:phone) }
  end

  describe 'Associations' do
    it { is_expected.to have_one(:loan) }
  end
end
