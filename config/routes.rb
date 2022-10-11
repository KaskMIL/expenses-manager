Rails.application.routes.draw do
  devise_for :users
  resources :expenditures
  resources :categories

  root 'home#index'
end
