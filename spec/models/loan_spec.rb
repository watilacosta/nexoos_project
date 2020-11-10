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

  describe 'Create' do
    let(:invalid_loan) { build(:loan, requester_id: nil) }
    let(:subject) { build(:loan) }

    context 'without requester_id' do
      it 'be invalid' do
        expect(invalid_loan).to_not be_valid
      end
    end

    context 'with all params' do
      it 'expect to be valid' do
        expect(subject).to be_valid
      end
    end
  end
end
