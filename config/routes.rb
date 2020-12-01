Rails.application.routes.draw do
  get 'properties/:id/reservations/new', to: 'reservations#new', as: 'reservations_new'
  resources :reservations
  get 'properties/mine', to: 'properties#mine'
  resources :properties
  devise_for :hosts
  root to: "properties#index"
end
