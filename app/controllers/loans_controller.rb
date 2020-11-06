# frozen_string_literal: true

class LoansController < ApplicationController # :nodoc:
  def new
    @loan = Loan.new(loans_params)
  end

  def create; end

  private

  def loans_params
    params.require(:loan).permit(:requester_id)
  end
end
