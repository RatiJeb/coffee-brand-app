# frozen_string_literal: true

Rails.application.routes.draw do
  root 'health#index'

  resources :health, only: :index
  resources :cart, only: :index
  resources :coffee, only: %i[index show]
end
