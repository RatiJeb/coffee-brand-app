# frozen_string_literal: true

Rails.application.routes.draw do
  root 'health#index'

  get 'health/index'
  resources :coffee, only: %i[index show]
end
