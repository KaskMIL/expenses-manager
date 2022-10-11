Rails.application.routes.draw do
  devise_for :users
  resources :expenditures
  resources :categories

  root 'categories#index'
end
