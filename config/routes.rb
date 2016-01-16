Rails.application.routes.draw do
  devise_for :users

  resources :costs

  root 'costs#index'

  get 'costs' => 'costs#show'

end
