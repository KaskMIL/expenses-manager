Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :expenditures
  end

  root 'home#index'
end
