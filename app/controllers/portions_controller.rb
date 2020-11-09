# frozen_string_literal: true

class PortionsController < ApplicationController # :nodoc:
  def new
    @loan    = Loan.find(params[:loan_id])
    amount   = Portion.calculate_amount(@loan)
    @portion = Portion.new(loan_id: @loan.id, amount: amount)
  end

  # def create
  #   @portion = Portion.new(portion_params)
  # end

  private

  def portion_params
    params.require(:portion).permit(:loan_id, :due_date, :amount)
  end
end
