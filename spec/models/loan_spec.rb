# frozen_string_literal: true

require 'rails_helper'

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
RSpec.describe Loan, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_presence_of(:term) }
    it { is_expected.to validate_numericality_of(:term).only_integer }
    it { is_expected.to validate_presence_of(:tax) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:requester) }
    it { is_expected.to have_many(:portions).dependent(:destroy) }
  end
end
