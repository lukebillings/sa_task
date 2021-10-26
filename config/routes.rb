Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spirit_animals, only: [:index, :create]
  get '/', to: 'spirit_animals#index'
  # post '/', to: 'spirit_animals#create'
end
