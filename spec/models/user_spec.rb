# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it { should define_enum_for(:role).with_values(%i[admin]) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:role) }
  end

  describe 'Associations' do
  end

  describe 'Create User' do
    it 'when ROLE :admin' do
      user = create(:user)
      expect(user.admin?).to be_truthy
    end
  end
end
