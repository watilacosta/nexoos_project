# frozen_string_literal: true

class RequestersController < ApplicationController # :nodoc:
  before_action :set_requester, only: %i[show edit update destroy]

  def index
    @requesters = Requester.includes(:loan)
  end

  def show; end

  def new
    @requester = Requester.new
  end

  def edit; end

  def create
    @requester = Requester.new(requester_params)

    if @requester.save
      redirect_to requesters_path, notice: 'Solicitante cadastrado com sucesso!'
    else
      render :new
    end
  end

  def update
    if @requester.update(requester_params)
      redirect_to requesters_path, notice: 'Solicitante atualizado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @requester.destroy
    redirect_to requesters_path, notice: 'O solicitante foi excluído com sucesso!'
  end

  private

  def set_requester
    @requester = Requester.find(params[:id])
  end

  def requester_params
    params.require(:requester).permit(:company_name, :cnpj, :address, :phone)
  end
end
