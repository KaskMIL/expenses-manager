Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :expenditures

  root 'home#index'
end
