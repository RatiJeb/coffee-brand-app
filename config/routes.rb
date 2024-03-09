Rails.application.routes.draw do
  get 'health/index'
  get 'coffee/index'
  get 'coffee/show'
  root 'health/index'
end
