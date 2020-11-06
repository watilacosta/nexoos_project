# frozen_string_literal: true

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
# Parcela
class Portion < ApplicationRecord
  belongs_to :loan

  def create; end

  private

  # 100000 * ((((1.015) ** 12) * 0.015) / (((1.015) ** 12) - 1)) = 9167.999290622945
  def pmt
    valor_presente * ((((1 + taxa) ** numero_de_periodos) * taxa) /
        (((1 + taxa) ** numero_de_periodos) - 1))
  end
end
