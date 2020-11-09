# frozen_string_literal: true

require 'rails_helper'

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
RSpec.describe Portion, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:due_date) }
    it { is_expected.to validate_presence_of(:loan) }
    it { is_expected.to validate_presence_of(:amount) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:loan) }
  end
end
