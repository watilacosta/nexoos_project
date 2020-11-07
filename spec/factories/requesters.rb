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
    company_name {  }
    address      {  }
    phone        {  }
  end
end
