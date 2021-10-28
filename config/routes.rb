Rails.application.routes.draw do
  devise_for :users
  resources :spirit_animals, only: [:index, :create]
  root to: 'spirit_animals#index'
end
