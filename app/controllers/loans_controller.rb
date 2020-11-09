# frozen_string_literal: true

class LoansController < ApplicationController # :nodoc:

  def show
    @loan = Loan.find(params[:id])
  end

  def new
    @loan = Loan.new(requester_id: params[:requester_id])
  end

  def create
    @loan = Loan.new(loans_params)
    if @loan.save!
      redirect_to requesters_path,
                  notice: 'Solicitação de empreśtimo criada com sucesso!'
    else
      render :new
    end
  end

  private

  def loans_params
    params.require(:loan).permit(:requester_id, :amount, :term, :tax)
  end
end
