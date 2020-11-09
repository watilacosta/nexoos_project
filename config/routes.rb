# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users
  root 'home#index'

  resources :requesters
  resources :loans, only: %i[new create show]
  resources :portions, only: %i[new create]
end
