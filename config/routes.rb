# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users
  root 'home#index'

  resources :requesters
  resources :loans, except: %i[index]
  resources :portions, only: %i[new create]
end
