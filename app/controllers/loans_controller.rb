# frozen_string_literal: true

class LoansController < ApplicationController # :nodoc:
  before_action :set_loan, only: %i[edit update destroy]

  def show
    @loan = Loan.find(params[:id])
  end

  def new
    @loan = Loan.new(requester_id: params[:requester_id])
  end

  def create
    @loan = Loan.new(loans_params)
    if @loan.save
      redirect_to requesters_path,
                  notice: 'Solicitação de empreśtimo criada com sucesso!'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @loan.update(loans_params)
      redirect_to loan_path(@loan),
                  notice: 'A solicitação de empréstimo foi atualizada!'
    else
      render :edit
    end
  end

  def destroy
    @loan.destroy
    redirect_to requesters_path,
                notice: 'A solicitação de empréstimo foi apagada!'
  end

  private

  def loans_params
    params.require(:loan).permit(:requester_id, :amount, :term, :tax)
  end

  def set_loan
    @loan = Loan.find(params[:id])
  end
end
