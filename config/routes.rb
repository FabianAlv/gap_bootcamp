Rails.application.routes.draw do
  resources :reservations
  get 'properties/mine', to: 'properties#mine'
  resources :properties
  devise_for :hosts
  root to: "properties#index"
end
