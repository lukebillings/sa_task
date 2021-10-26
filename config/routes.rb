Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'spirit_animals#index'
  get '/', to: 'spirit_animals#new'
  get '/', to: 'spirit_animals#create'
end
