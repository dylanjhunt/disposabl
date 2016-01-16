Rails.application.routes.draw do
  devise_for :users

  resources :costs

  resources :incomes

  resources :all

  root 'costs#index'

  get 'costs' => 'costs#show'

end
